# 10-funcoes-e-bibliotecas — Funções, Bibliotecas e Padrões Reutilizáveis

Bibliotecas corporativas em Bash puro para inclusão (source) em scripts de missão crítica, cobrindo logging JSON, traps, HTTP, locks e criptografia.

---

## 🏛️ Trilha de Projetos Práticos de Nível Sênior (20 Projetos Reais)

| # | Projeto | Título / Foco de Negócio | Ferramentas Nativas Chave |
|---|---|---|---|
| **01** | [`01-lib-log-structured-json-syslog-sh/`](./01-lib-log-structured-json-syslog-sh) | **Biblioteca de Logging Estruturado em JSON e Syslog para Bash** | `date, logger, jq, awk` |
| **02** | [`02-lib-args-getopts-long-options-parser-sh/`](./02-lib-args-getopts-long-options-parser-sh) | **Parser Robusto de Argumentos Curtos e Longos (--flag) em Bash Puro** | `shift, case, printf` |
| **03** | [`03-lib-trap-atomic-cleanup-exit-codes-sh/`](./03-lib-trap-atomic-cleanup-exit-codes-sh) | **Gerenciador de Sinais e Limpeza Atômica de Recursos com Trap** | `trap, mktemp, rm` |
| **04** | [`04-lib-network-http-curl-backoff-retry-sh/`](./04-lib-network-http-curl-backoff-retry-sh) | **Cliente HTTP com Retry Exponencial, Jitter e Circuit Breaker em Bash** | `curl, bc, sleep, awk` |
| **05** | [`05-lib-math-precision-calculator-bc-sh/`](./05-lib-math-precision-calculator-bc-sh) | **Biblioteca de Cálculos Matemáticos e Aritmética de Ponto Flutuante com bc** | `bc, printf` |
| **06** | [`06-lib-string-sanitizer-sql-shell-escape-sh/`](./06-lib-string-sanitizer-sql-shell-escape-sh) | **Sanitizador de Strings e Prevenção de Injeção de Comandos Shell e SQL** | `sed, awk, tr` |
| **07** | [`07-lib-concurrency-threadpool-xargs-fifo-sh/`](./07-lib-concurrency-threadpool-xargs-fifo-sh) | **Pool de Threads e Execução Concorrente Controlada em Bash com FIFO** | `mkfifo, exec, read, wait` |
| **08** | [`08-lib-config-yaml-json-ini-loader-sh/`](./08-lib-config-yaml-json-ini-loader-sh) | **Carregador Declarativo de Configurações em Formatos YAML, JSON e INI** | `jq, yq, awk, sed` |
| **09** | [`09-lib-validation-ip-mac-email-regex-sh/`](./09-lib-validation-ip-mac-email-regex-sh) | **Biblioteca de Validação de Tipos de Dados (IPv4/IPv6, MAC, Domínio, Email)** | `bash [[ =~ ]]` |
| **10** | [`10-lib-crypto-aes-gcm-openssl-wrapper-sh/`](./10-lib-crypto-aes-gcm-openssl-wrapper-sh) | **Wrapper de Criptografia e Decodificação Segura AES-256-GCM com OpenSSL** | `openssl, base64` |
| **11** | [`11-lib-lock-flock-distributed-lock-sh/`](./11-lib-lock-flock-distributed-lock-sh) | **Gerenciador de Bloqueios Concorrentes Locais e Distribuídos (flock)** | `flock, exec` |
| **12** | [`12-lib-color-ansi-table-formatter-sh/`](./12-lib-color-ansi-table-formatter-sh) | **Formatador de Interfaces de Terminal com Cores ANSI, Caixas e Tabelas** | `tput, printf, column` |
| **13** | [`13-lib-time-iso8601-unix-epoch-converter-sh/`](./13-lib-time-iso8601-unix-epoch-converter-sh) | **Manipulador e Calculador de Datas ISO-8601 e Época Unix** | `date, awk` |
| **14** | [`14-lib-system-hardware-cpu-ram-profile-sh/`](./14-lib-system-hardware-cpu-ram-profile-sh) | **Profiler e Detector de Arquitetura de Hardware e Recursos do Sistema** | `cat, /proc, awk, systemd-detect-virt` |
| **15** | [`15-lib-prompt-interactive-confirm-menu-sh/`](./15-lib-prompt-interactive-confirm-menu-sh) | **Menu Interativo de Seleção e Confirmação Segura para Operações Destrutivas** | `read, tput, stty` |
| **16** | [`16-lib-metrics-prometheus-textfile-writer-sh/`](./16-lib-metrics-prometheus-textfile-writer-sh) | **Escritor de Métricas OpenMetrics / Prometheus Textfile em Bash** | `printf, mv, date` |
| **17** | [`17-lib-fs-atomic-write-file-swap-sh/`](./17-lib-fs-atomic-write-file-swap-sh) | **Gerenciador de Escrita Atômica de Arquivos e Troca Segura (Swap)** | `mktemp, sync, mv, chmod, chown` |
| **18** | [`18-lib-db-sqlite-psql-query-runner-sh/`](./18-lib-db-sqlite-psql-query-runner-sh) | **Executor Abstrato de Consultas SQL para SQLite e PostgreSQL em Bash** | `sqlite3, psql, awk` |
| **19** | [`19-lib-os-distro-detector-debian-rhel-sh/`](./19-lib-os-distro-detector-debian-rhel-sh) | **Detector Universal de Distribuição Linux e Versão de Pacotes** | `/etc/os-release, grep, cut` |
| **20** | [`20-lib-cache-ttl-memory-invalidation-sh/`](./20-lib-cache-ttl-memory-invalidation-sh) | **Cache em Memória Local com Suporte a TTL (Time-To-Live) para Scripts** | `/dev/shm, date, cat, rm` |
