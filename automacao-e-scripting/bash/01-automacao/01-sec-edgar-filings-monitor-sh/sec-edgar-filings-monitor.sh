#!/usr/bin/env bash
# ==============================================================================
# SEC EDGAR Filings Monitor v1.3.0 — JCSCODE
# ==============================================================================
# Monitora submissões da SEC EDGAR para um ticker, detecta filings novos pelo
# accession number e emite saída em table, json, tsv ou summary, com alerta
# opcional via webhook (Slack / Teams / Discord / HTTP genérico).
#
# DEPENDÊNCIAS: bash 4+, curl, jq, column, logger, flock, stat, sort, tr
#
# REQUISITOS DA SEC:
#   1. User-Agent identificável com e-mail real.
#   2. No máximo 10 req/s por IP (aqui ~6,6 req/s via SEC_RATE_LIMIT_DELAY). teste
# ==============================================================================

set -euo pipefail
IFS=$'\n\t'

# ------------------------------------------------------------------------------
# 1. CONSTANTES
# ------------------------------------------------------------------------------
readonly SCRIPT_NAME="$(basename "${BASH_SOURCE[0]}")"
readonly SCRIPT_VERSION="1.3.0"

readonly DEFAULT_USER_AGENT="JCSCODE jcs@jcscode.com"

readonly SEC_DATA_URL="https://data.sec.gov"
readonly SEC_WWW_URL="https://www.sec.gov"
readonly SEC_TICKERS_ENDPOINT="${SEC_WWW_URL}/files/company_tickers.json"

readonly XDG_CACHE_DIR="${XDG_CACHE_HOME:-$HOME/.cache}/sec-edgar-monitor"
readonly XDG_STATE_DIR="${XDG_STATE_HOME:-$HOME/.local/state}/sec-edgar-monitor"

readonly TICKERS_CACHE_TTL=86400       # 24h
readonly SEC_RATE_LIMIT_DELAY=0.15     # ~6,6 req/s
readonly SEC_CONNECT_TIMEOUT=5         # segundos para estabelecer conexão
readonly SEC_MAX_TIME=30               # segundos para a transação inteira

readonly EX_OK=0
readonly EX_USAGE=64
readonly EX_DATAERR=65
readonly EX_SOFTWARE=70
readonly EX_UNAVAILABLE=69
readonly EX_CANTCREAT=73

# ------------------------------------------------------------------------------
# 2. CONFIGURAÇÃO (padrões; sobrescritos por CLI ou ENV)
# ------------------------------------------------------------------------------
TARGET_TICKER=""
OUTPUT_FORMAT="table"
FILTER_FORMS="8-K,10-Q,10-K"
LIMIT_RESULTS=10
WEBHOOK_URL="${SEC_WEBHOOK_URL:-}"
USER_AGENT="${SEC_USER_AGENT:-${DEFAULT_USER_AGENT}}"
STATE_DIR="${XDG_STATE_DIR}"
CACHE_DIR="${XDG_CACHE_DIR}"
FORCE_IPV4="${SEC_FORCE_IPV4:-1}"      # 1 = força IPv4 (padrão); 0 = curl decide
VERBOSE=0
INIT_STATE_ONLY=0
NO_COLOR=0
TMP_DIR=""

# ------------------------------------------------------------------------------
# 3. CORES (somente em TTY e se não houver --no-color)
# ------------------------------------------------------------------------------
setup_colors() {
    if [[ -t 2 && "${NO_COLOR}" -eq 0 ]]; then
        COLOR_RESET=$'\e[0m'; COLOR_BOLD=$'\e[1m';  COLOR_DIM=$'\e[2m'
        COLOR_GREEN=$'\e[32m'; COLOR_YELLOW=$'\e[33m'; COLOR_RED=$'\e[31m'
        COLOR_CYAN=$'\e[36m'
    else
        COLOR_RESET=""; COLOR_BOLD=""; COLOR_DIM=""
        COLOR_GREEN=""; COLOR_YELLOW=""; COLOR_RED=""; COLOR_CYAN=""
    fi
}
setup_colors

# ------------------------------------------------------------------------------
# 4. LIMPEZA GARANTIDA
# ------------------------------------------------------------------------------
cleanup() {
    local exit_code=$?
    trap - EXIT INT TERM HUP
    if [[ -n "${TMP_DIR:-}" && -d "${TMP_DIR}" ]]; then
        rm -rf "${TMP_DIR}"
    fi
    exit "${exit_code}"
}
trap cleanup EXIT INT TERM HUP

# ------------------------------------------------------------------------------
# 5. LOG (stderr + syslog)
# ------------------------------------------------------------------------------
log_msg() {
    local level="$1" color="$2"
    shift 2
    local message="$*"
    local timestamp
    timestamp="$(date -u +"%Y-%m-%dT%H:%M:%SZ")"

    if [[ "${level}" != "DEBUG" || "${VERBOSE}" -ge 1 ]]; then
        printf "%s[%s] [%-5s] %s%s\n" "${color}" "${timestamp}" "${level}" "${message}" "${COLOR_RESET}" >&2
    fi

    if command -v logger >/dev/null 2>&1; then
        local prio="info"
        case "${level}" in
            DEBUG) prio="debug" ;;
            WARN)  prio="warning" ;;
            ERROR) prio="err" ;;
        esac
        logger -t "sec-edgar-monitor[$$]" -p "user.${prio}" \
            "[${level}] [${TARGET_TICKER:-SYS}] ${message}" 2>/dev/null || true
    fi
}

log_debug() { log_msg "DEBUG" "${COLOR_DIM}"    "$*"; }
log_info()  { log_msg "INFO"  "${COLOR_GREEN}"  "$*"; }
log_warn()  { log_msg "WARN"  "${COLOR_YELLOW}" "$*"; }
log_error() { log_msg "ERROR" "${COLOR_RED}"    "$*"; }

# ------------------------------------------------------------------------------
# 6. VALIDAÇÕES DE AMBIENTE
# ------------------------------------------------------------------------------
check_dependencies() {
    local missing=() tool
    for tool in curl jq column logger flock stat tr sort; do
        command -v "${tool}" >/dev/null 2>&1 || missing+=("${tool}")
    done

    if [[ ${#missing[@]} -gt 0 ]]; then
        log_error "Ferramentas ausentes: ${missing[*]}"
        log_error "Debian/Ubuntu: sudo apt-get install -y curl jq bsdextrautils util-linux"
        log_error "RHEL/Rocky   : sudo dnf install -y curl jq util-linux"
        exit "${EX_UNAVAILABLE}"
    fi
}

# Valida que a opção recebeu um valor (evita "shift" falhar silenciosamente)
need_value() {
    local opt="$1" val="${2:-}"
    if [[ -z "${val}" || "${val}" == -* ]]; then
        log_error "A opção ${opt} exige um valor."
        exit "${EX_USAGE}"
    fi
}

# User-Agent da SEC: precisa conter um e-mail real (ex: "Nome email@dominio.com")
validate_user_agent() {
    if [[ -z "${USER_AGENT}" ]]; then
        log_error "User-Agent vazio. Defina SEC_USER_AGENT ou use -u."
        exit "${EX_USAGE}"
    fi
    if [[ ! "${USER_AGENT}" =~ [^[:space:]]+@[^[:space:]]+\.[^[:space:]]+ ]]; then
        log_error "User-Agent sem e-mail válido: '${USER_AGENT}'"
        log_error "Formato exigido pela SEC: 'Nome email@dominio.com'"
        exit "${EX_USAGE}"
    fi
}

# ------------------------------------------------------------------------------
# 7. AJUDA
# ------------------------------------------------------------------------------
show_help() {
    cat <<EOF
${COLOR_BOLD}NOME${COLOR_RESET}
    ${SCRIPT_NAME} v${SCRIPT_VERSION} — Monitor de filings da SEC EDGAR

${COLOR_BOLD}SINOPSE${COLOR_RESET}
    ${SCRIPT_NAME} -t TICKER [OPÇÕES]

${COLOR_BOLD}OPÇÕES${COLOR_RESET}
    -t, --ticker TICKER     Ticker da ação (obrigatório). Ex: AAPL, JPM, BRK.B
    -f, --format FORMATO    table | json | tsv | summary      (padrão: table)
    -m, --forms LISTA       Ex: 8-K,10-Q,10-K  ou ALL          (padrão: 8-K,10-Q,10-K)
    -l, --limit N           Máximo de registros                (padrão: ${LIMIT_RESULTS})
    -w, --webhook URL       Webhook Slack/Teams/Discord/HTTP   (ou env SEC_WEBHOOK_URL)
    -u, --user-agent STR    User-Agent da SEC                  (ou env SEC_USER_AGENT)
                            Padrão: "${DEFAULT_USER_AGENT}"
    -s, --state-dir DIR     Diretório de estado               (padrão: ${XDG_STATE_DIR})
        --init-state        Reinicializa o estado sem disparar alertas
        --no-color          Desativa cores ANSI
    -v, --verbose           Mais diagnósticos (-v ou -vv)
    -h, --help              Mostra esta ajuda

${COLOR_BOLD}VARIÁVEIS DE AMBIENTE${COLOR_RESET}
    SEC_USER_AGENT          User-Agent da SEC
    SEC_WEBHOOK_URL         URL do webhook
    SEC_FORCE_IPV4          1 (padrão) força IPv4; 0 deixa o curl escolher

${COLOR_BOLD}EXEMPLOS${COLOR_RESET}
    ${SCRIPT_NAME} -t AAPL
    ${SCRIPT_NAME} -t JPM -f json | jq '.filings[] | {form, filingDate}'
    ${SCRIPT_NAME} -t NVDA -w "https://example.com/webhook" -f summary
    ${SCRIPT_NAME} -t MSFT --init-state -v

${COLOR_BOLD}CÓDIGOS DE SAÍDA${COLOR_RESET}
    0   sucesso
    64  erro de uso ou parâmetros (inclui User-Agent inválido)
    65  ticker não encontrado ou dado inválido
    69  dependência ausente ou falha de rede/API
    70  erro de processamento jq
    73  falha ao criar diretórios de estado
EOF
}

# ------------------------------------------------------------------------------
# 8. HTTP COM CURL (compatível com a SEC)
# ------------------------------------------------------------------------------
fetch_sec_api() {
    local url="$1" output_file="$2" http_code curl_exit=0
    local -a curl_opts=(
        --silent --show-error --location --compressed
        --connect-timeout "${SEC_CONNECT_TIMEOUT}"
        --max-time "${SEC_MAX_TIME}"
        --retry 2 --retry-delay 2
        -A "${USER_AGENT}"
        -w "%{http_code}"
        -o "${output_file}"
    )

    if [[ "${FORCE_IPV4}" -eq 1 ]]; then
        curl_opts+=(--ipv4)
    fi

    log_debug "GET ${url} (ipv4=${FORCE_IPV4})"
    sleep "${SEC_RATE_LIMIT_DELAY}"

    http_code=$(curl "${curl_opts[@]}" "${url}" 2>"${TMP_DIR}/curl_error.log") || curl_exit=$?

    if [[ "${curl_exit}" -ne 0 ]]; then
        log_error "Falha de rede ao acessar ${url} (curl exit ${curl_exit})."
        case "${curl_exit}" in
            6)  log_error "Exit 6: DNS não resolveu o host. Veja a seção de diagnóstico do README." ;;
            7)  log_error "Exit 7: não foi possível conectar ao host." ;;
            28) log_error "Exit 28: timeout. Pode ser IPv6 quebrado ou egress bloqueado." ;;
        esac
        [[ -s "${TMP_DIR}/curl_error.log" ]] && log_error "$(head -n3 "${TMP_DIR}/curl_error.log")"
        return "${EX_UNAVAILABLE}"
    fi

    log_debug "HTTP ${http_code}"

    case "${http_code}" in
        200) return 0 ;;
        403)
            log_error "HTTP 403 da SEC: User-Agent provavelmente rejeitado ('${USER_AGENT}')."
            return "${EX_UNAVAILABLE}"
            ;;
        404)
            log_error "HTTP 404 em ${url}"
            return "${EX_DATAERR}"
            ;;
        429)
            log_error "HTTP 429: rate limit da SEC excedido. Aumente o intervalo do cron."
            return "${EX_UNAVAILABLE}"
            ;;
        *)
            log_error "HTTP inesperado ${http_code} em ${url}"
            return "${EX_UNAVAILABLE}"
            ;;
    esac
}

# ------------------------------------------------------------------------------
# 9. TICKER -> CIK (cache com TTL, escrita atômica no mesmo diretório)
# ------------------------------------------------------------------------------
resolve_ticker_to_cik() {
    local ticker="$1"
    local cache_file="${CACHE_DIR}/company_tickers.json"
    local cache_tmp="${CACHE_DIR}/company_tickers.json.tmp"
    local tmp_download="${TMP_DIR}/tickers_download.json"
    local needs_download=0

    if [[ ! -f "${cache_file}" ]]; then
        log_info "Cache de tickers inexistente. Baixando da SEC..."
        needs_download=1
    else
        local mod_time age
        mod_time=$(stat -c %Y "${cache_file}" 2>/dev/null || echo 0)
        age=$(( $(date +%s) - mod_time ))
        if [[ "${age}" -gt "${TICKERS_CACHE_TTL}" ]]; then
            log_info "Cache de tickers expirado (${age}s). Atualizando..."
            needs_download=1
        fi
    fi

    if [[ "${needs_download}" -eq 1 ]]; then
        if fetch_sec_api "${SEC_TICKERS_ENDPOINT}" "${tmp_download}"; then
            cp "${tmp_download}" "${cache_tmp}"
            mv -f "${cache_tmp}" "${cache_file}"
            log_info "Cache de tickers atualizado."
        elif [[ -f "${cache_file}" ]]; then
            log_warn "Falha ao renovar cache. Usando cache antigo como fallback."
        else
            log_error "Sem lista de tickers da SEC e sem cache disponível."
            return "${EX_UNAVAILABLE}"
        fi
    fi

    # company_tickers.json: { "0": {"cik_str": 320193, "ticker": "AAPL", "title": "..."}, ... }
    local match
    match=$(jq -r --arg t "${ticker}" \
        '.[] | select(.ticker == $t) | "\(.cik_str)\t\(.title)"' \
        "${cache_file}" 2>/dev/null | head -n1 || true)

    if [[ -z "${match}" ]]; then
        log_error "Ticker '${ticker}' não encontrado na base da SEC."
        return "${EX_DATAERR}"
    fi

    local raw_cik company_name padded_cik
    raw_cik=$(printf '%s' "${match}" | cut -f1)
    company_name=$(printf '%s' "${match}" | cut -f2-)
    padded_cik=$(printf "%010d" "${raw_cik}")

    printf "%s\t%s\t%s\n" "${padded_cik}" "${raw_cik}" "${company_name}"
}

# ------------------------------------------------------------------------------
# 10. PARSING DOS FILINGS
# ------------------------------------------------------------------------------
# A SEC devolve arrays paralelos em .filings.recent; zipamos por índice.
parse_filings_json() {
    local raw_json_file="$1" forms_filter="$2" limit="$3" cik_raw="$4"

    jq -r \
        --arg cik_raw "${cik_raw}" \
        --arg forms "${forms_filter}" \
        --argjson limit "${limit}" '
        (.filings.recent) as $f
        | ($forms | split(",") | map(gsub("\\s"; "")) | map(select(length > 0))) as $allowed
        | ($forms == "" or $forms == "ALL") as $all
        | [
            range(0; ($f.accessionNumber // []) | length) as $i
            | {
                accessionNumber:       $f.accessionNumber[$i],
                form:                  $f.form[$i],
                filingDate:            $f.filingDate[$i],
                reportDate:            ($f.reportDate[$i] // ""),
                acceptanceDateTime:    ($f.acceptanceDateTime[$i] // ""),
                act:                   ($f.act[$i] // ""),
                primaryDocument:       ($f.primaryDocument[$i] // ""),
                primaryDocDescription: ($f.primaryDocDescription[$i] // ""),
                documentUrl: (
                    if ($f.primaryDocument[$i] // "") != "" then
                        "https://www.sec.gov/Archives/edgar/data/" + $cik_raw + "/"
                        + ($f.accessionNumber[$i] | gsub("-"; "")) + "/"
                        + $f.primaryDocument[$i]
                    else
                        "https://www.sec.gov/cgi-bin/browse-edgar?action=getcompany&CIK=" + $cik_raw
                    end
                )
            }
        ]
        | map(. as $r | select($all or any($allowed[]; . == $r.form)))
        | .[0:$limit]
    ' "${raw_json_file}"
}

# ------------------------------------------------------------------------------
# 11. DIFF DE ESTADO (temporário no MESMO filesystem => mv atômico)
# ------------------------------------------------------------------------------
diff_and_update_state() {
    local ticker="$1" filings_json_file="$2" is_init_mode="$3"
    local state_file="${STATE_DIR}/${ticker}.seen"
    local tmp_state="${STATE_DIR}/${ticker}.seen.tmp"
    local current_file="${TMP_DIR}/current_accessions.txt"
    local new_file="${TMP_DIR}/new_accessions.txt"
    local new_json="${TMP_DIR}/new_accessions.json"

    jq -r '.[].accessionNumber' "${filings_json_file}" > "${current_file}"

    if [[ "${is_init_mode}" -eq 1 ]]; then
        local total_init
        total_init=$(wc -l < "${current_file}" | tr -d '[:space:]')
        log_info "--init-state: estado reinicializado com ${total_init} filing(s). Nenhum alerta."
        cp "${current_file}" "${tmp_state}"
        mv -f "${tmp_state}" "${state_file}"
        : > "${new_file}"

    elif [[ ! -f "${state_file}" ]]; then
        log_warn "Primeira execução para ${ticker} sem estado. Use --init-state para silenciar o primeiro lote."
        cp "${current_file}" "${tmp_state}"
        mv -f "${tmp_state}" "${state_file}"
        cp "${current_file}" "${new_file}"

    else
        grep -F -x -v -f "${state_file}" "${current_file}" > "${new_file}" || true

        local count_new=0
        if [[ -s "${new_file}" ]]; then
            count_new=$(wc -l < "${new_file}" | tr -d '[:space:]')
        fi

        if [[ "${count_new}" -gt 0 ]]; then
            log_info "${count_new} NOVO(S) FILING(S) DETECTADO(S) PARA ${ticker}!"
            sort -u "${state_file}" "${new_file}" > "${tmp_state}"
            mv -f "${tmp_state}" "${state_file}"
        else
            log_info "Nenhum filing novo para ${ticker}."
        fi
    fi

    if [[ -s "${new_file}" ]]; then
        jq -R -s 'split("\n") | map(select(length > 0))' "${new_file}" > "${new_json}"
    else
        echo "[]" > "${new_json}"
    fi
}

# ------------------------------------------------------------------------------
# 12. WEBHOOK (Slack / Teams / Discord / genérico)
# ------------------------------------------------------------------------------
send_webhook_alert() {
    local webhook_url="$1" ticker="$2" company_name="$3" new_filings_json="$4"

    local total_new
    total_new=$(jq 'length' "${new_filings_json}")
    [[ "${total_new}" -eq 0 ]] && return 0

    log_info "Enviando ${total_new} filing(s) ao webhook..."

    local summary_lines
    summary_lines=$(jq -r '
        .[] | "• *Form " + .form + "* (" + .filingDate + ") - <" + .documentUrl + "|"
        + (if .primaryDocDescription != "" then .primaryDocDescription else .primaryDocument end) + ">"
    ' "${new_filings_json}")

    local payload
    payload=$(jq -n \
        --arg ticker "${ticker}" \
        --arg company "${company_name}" \
        --arg count "${total_new}" \
        --arg details "${summary_lines}" \
        --arg version "${SCRIPT_VERSION}" '{
            text: ("🚨 *SEC EDGAR: " + $ticker + " (" + $company + ")* — " + $count + " novo(s) documento(s)"),
            attachments: [{
                color: "#36a64f",
                title: ($ticker + " — Submissões recentes"),
                text: $details,
                footer: ("SEC EDGAR Monitor v" + $version + " | JCSCODE"),
                ts: (now | floor)
            }]
        }')

    local http_code
    http_code=$(curl \
        --silent --show-error --max-time 10 \
        -H "Content-Type: application/json" \
        -X POST -d "${payload}" \
        -o "${TMP_DIR}/webhook_out.log" \
        -w "%{http_code}" \
        "${webhook_url}" 2>"${TMP_DIR}/webhook_err.log") || {
            log_error "Falha de conexão com o webhook."
            return 0
        }

    if [[ "${http_code}" =~ ^2[0-9][0-9]$ ]]; then
        log_info "Webhook enviado (HTTP ${http_code})."
    else
        log_warn "Webhook respondeu HTTP ${http_code}."
        [[ -s "${TMP_DIR}/webhook_out.log" ]] && log_debug "Corpo: $(cat "${TMP_DIR}/webhook_out.log")"
    fi
    return 0
}

# ------------------------------------------------------------------------------
# 13. RENDERIZAÇÃO
# ------------------------------------------------------------------------------
render_output() {
    local format="$1" ticker="$2" cik_padded="$3" company_name="$4"
    local filings_json_file="$5" new_accessions_json="$6"

    case "${format}" in
        json)
            jq \
                --arg ticker "${ticker}" \
                --arg cik "${cik_padded}" \
                --arg company "${company_name}" \
                --slurpfile new_acc "${new_accessions_json}" '
                {
                    meta: {
                        ticker: $ticker,
                        cik: $cik,
                        company: $company,
                        checkedAt: (now | todate),
                        newFilingsCount: ($new_acc[0] | length)
                    },
                    filings: [ .[] | . as $r | . + {
                        isNew: (($new_acc[0] | index($r.accessionNumber)) != null)
                    } ]
                }' "${filings_json_file}"
            ;;

        tsv)
            jq -r \
                --arg ticker "${ticker}" \
                --slurpfile new_acc "${new_accessions_json}" '
                .[] | . as $r |
                [
                    $ticker, .form, .filingDate, .accessionNumber,
                    (if ($new_acc[0] | index($r.accessionNumber)) != null then "NEW" else "SEEN" end),
                    .documentUrl
                ] | @tsv
            ' "${filings_json_file}"
            ;;

        summary)
            jq -r \
                --arg ticker "${ticker}" \
                --slurpfile new_acc "${new_accessions_json}" '
                .[] | . as $r |
                (if ($new_acc[0] | index($r.accessionNumber)) != null then "[NEW]  " else "[SEEN] " end)
                + $ticker + " | " + .form + " | " + .filingDate + " | " + .documentUrl
            ' "${filings_json_file}"
            ;;

        table|*)
            local table_stream="${TMP_DIR}/table_stream.txt"
            printf "STATUS\tFORM\tDATA\tHORA_UTC\tDESCRICAO\tURL\n" > "${table_stream}"

            jq -r \
                --slurpfile new_acc "${new_accessions_json}" '
                .[] | . as $r |
                [
                    (if ($new_acc[0] | index($r.accessionNumber)) != null then ">>> NOVO <<<" else "SEEN" end),
                    .form,
                    .filingDate,
                    ((.acceptanceDateTime[11:19]) // "-"),
                    ((if .primaryDocDescription != "" then .primaryDocDescription else .primaryDocument end)
                        | gsub("\t"; " ") | .[0:30]),
                    .documentUrl
                ] | @tsv
            ' "${filings_json_file}" >> "${table_stream}"

            local bar
            bar="$(printf '=%.0s' {1..80})"
            printf "\n%s%s%s\n" "${COLOR_BOLD}${COLOR_CYAN}" "${bar}" "${COLOR_RESET}"
            printf "%s%s (%s)%s — CIK: %s\n" "${COLOR_BOLD}" "${company_name}" "${ticker}" "${COLOR_RESET}" "${cik_padded}"
            printf "%sFormulários: %s | Consulta: %s%s\n" "${COLOR_DIM}" "${FILTER_FORMS}" "$(date -u +"%Y-%m-%d %H:%M:%S UTC")" "${COLOR_RESET}"
            printf "%s%s%s\n\n" "${COLOR_BOLD}${COLOR_CYAN}" "${bar}" "${COLOR_RESET}"

            column -t -s $'\t' "${table_stream}"
            printf "\n"
            ;;
    esac
}

# ------------------------------------------------------------------------------
# 14. MAIN
# ------------------------------------------------------------------------------
main() {
    check_dependencies

    TMP_DIR=$(mktemp -d -t "sec_monitor_XXXXXX")
    chmod 700 "${TMP_DIR}"

    # --- Parsing de argumentos ---
    while [[ $# -gt 0 ]]; do
        case "$1" in
            -t|--ticker)     need_value "$1" "${2:-}"; TARGET_TICKER="$2";  shift 2 ;;
            -f|--format)     need_value "$1" "${2:-}"; OUTPUT_FORMAT="$2";  shift 2 ;;
            -m|--forms)      need_value "$1" "${2:-}"; FILTER_FORMS="$2";   shift 2 ;;
            -l|--limit)      need_value "$1" "${2:-}"; LIMIT_RESULTS="$2";  shift 2 ;;
            -w|--webhook)    need_value "$1" "${2:-}"; WEBHOOK_URL="$2";    shift 2 ;;
            -u|--user-agent) need_value "$1" "${2:-}"; USER_AGENT="$2";     shift 2 ;;
            -s|--state-dir)  need_value "$1" "${2:-}"; STATE_DIR="$2";      shift 2 ;;
            --init-state)    INIT_STATE_ONLY=1; shift ;;
            --no-color)      NO_COLOR=1; setup_colors; shift ;;
            -v|--verbose)    VERBOSE=$((VERBOSE + 1)); shift ;;
            -h|--help)       show_help; exit "${EX_OK}" ;;
            *)
                log_error "Opção desconhecida: $1 (use --help)"
                exit "${EX_USAGE}"
                ;;
        esac
    done

    # --- Validações ---
    if [[ -z "${TARGET_TICKER}" ]]; then
        log_error "Parâmetro -t/--ticker é obrigatório. Ex: ${SCRIPT_NAME} -t AAPL"
        exit "${EX_USAGE}"
    fi

    validate_user_agent

    if [[ ! "${LIMIT_RESULTS}" =~ ^[0-9]+$ || "${LIMIT_RESULTS}" -lt 1 ]]; then
        log_error "--limit deve ser inteiro positivo (recebido: '${LIMIT_RESULTS}')."
        exit "${EX_USAGE}"
    fi

    case "${OUTPUT_FORMAT}" in
        table|json|tsv|summary) ;;
        *)
            log_error "Formato inválido: '${OUTPUT_FORMAT}'. Use: table, json, tsv, summary"
            exit "${EX_USAGE}"
            ;;
    esac

    if [[ "${FORCE_IPV4}" != "0" && "${FORCE_IPV4}" != "1" ]]; then
        log_error "SEC_FORCE_IPV4 deve ser 0 ou 1 (recebido: '${FORCE_IPV4}')."
        exit "${EX_USAGE}"
    fi

    # Normaliza ticker: maiúsculas, ponto vira hífen (BRK.B -> BRK-B, formato da SEC)
    TARGET_TICKER=$(printf '%s' "${TARGET_TICKER}" | tr '[:lower:]' '[:upper:]' | tr '.' '-' | tr -cd 'A-Z0-9-')
    if [[ -z "${TARGET_TICKER}" ]]; then
        log_error "Ticker inválido após normalização."
        exit "${EX_USAGE}"
    fi

    # --- Diretórios (após o parsing) ---
    mkdir -p "${CACHE_DIR}" "${STATE_DIR}" || exit "${EX_CANTCREAT}"
    chmod 700 "${CACHE_DIR}" "${STATE_DIR}" 2>/dev/null || true

    # --- Lock persistente por ticker ---
    local lock_file="${STATE_DIR}/${TARGET_TICKER}.lock"
    exec 200>"${lock_file}"
    if ! flock -n 200; then
        log_warn "Outra instância para ${TARGET_TICKER} já está em execução. Saindo."
        exit "${EX_OK}"
    fi

    log_info "Monitorando ${TARGET_TICKER} na SEC EDGAR (v${SCRIPT_VERSION})"

    # --- 1. Ticker -> CIK ---
    local resolution_data
    if ! resolution_data=$(resolve_ticker_to_cik "${TARGET_TICKER}"); then
        exit "${EX_DATAERR}"
    fi

    local cik_padded cik_raw company_name
    cik_padded=$(printf '%s' "${resolution_data}" | cut -f1)
    cik_raw=$(printf '%s' "${resolution_data}" | cut -f2)
    company_name=$(printf '%s' "${resolution_data}" | cut -f3-)

    log_info "Empresa: ${COLOR_CYAN}${company_name}${COLOR_RESET} | CIK: ${cik_padded}"

    # --- 2. Submissões ---
    local submissions_url="${SEC_DATA_URL}/submissions/CIK${cik_padded}.json"
    local raw_file="${TMP_DIR}/submissions_${cik_padded}.json"

    if ! fetch_sec_api "${submissions_url}" "${raw_file}"; then
        log_error "Não foi possível obter as submissões da empresa."
        exit "${EX_UNAVAILABLE}"
    fi

    # --- 3. Parsing ---
    local filings_json_file="${TMP_DIR}/filtered_filings.json"
    if ! parse_filings_json "${raw_file}" "${FILTER_FORMS}" "${LIMIT_RESULTS}" "${cik_raw}" \
            > "${filings_json_file}"; then
        log_error "Falha ao processar o JSON da SEC com jq."
        exit "${EX_SOFTWARE}"
    fi

    # --- 4. Diff de estado ---
    local new_accessions_json="${TMP_DIR}/new_accessions.json"
    local new_file="${TMP_DIR}/new_accessions.txt"
    diff_and_update_state "${TARGET_TICKER}" "${filings_json_file}" "${INIT_STATE_ONLY}"

    if [[ "${INIT_STATE_ONLY}" -eq 1 ]]; then
        log_info "Estado inicial gravado. Nenhum alerta despachado."
        exit "${EX_OK}"
    fi

    # --- 5. Webhook ---
    local count_new=0
    if [[ -s "${new_file}" ]]; then
        count_new=$(wc -l < "${new_file}" | tr -d '[:space:]')
    fi

    if [[ -n "${WEBHOOK_URL}" && "${count_new}" -gt 0 ]]; then
        local new_filings_json="${TMP_DIR}/new_filings_only.json"
        jq --slurpfile new_acc "${new_accessions_json}" \
            '[ .[] | . as $r | select(($new_acc[0] | index($r.accessionNumber)) != null) ]' \
            "${filings_json_file}" > "${new_filings_json}"
        send_webhook_alert "${WEBHOOK_URL}" "${TARGET_TICKER}" "${company_name}" "${new_filings_json}"
    fi

    # --- 6. Saída ---
    render_output "${OUTPUT_FORMAT}" "${TARGET_TICKER}" "${cik_padded}" \
        "${company_name}" "${filings_json_file}" "${new_accessions_json}"

    log_info "Concluído para ${TARGET_TICKER}."
    exit "${EX_OK}"
}

main "$@"