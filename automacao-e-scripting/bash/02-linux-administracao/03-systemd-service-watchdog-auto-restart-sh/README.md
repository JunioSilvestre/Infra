# 03 — Watchdog e Auto-Cura de Serviços Críticos do Systemd

## 🏢 Cenário de Negócios e Produção Real
Serviços essenciais (Nginx, PostgreSQL, daemons internos) que sofrem crash silencioso ou entram em estado 'failed' sem disparar reinício.

### ⚠️ O Problema Real
Daemons em loop de falha (CrashLoop) esgotam o RestartSec padrão do systemd e permanecem inativos.

## 🚀 Arquitetura e Engenharia em Bash
Inspeção em tempo real de unidades com 'systemctl --failed', análise de logs no journalctl buscando causa raiz (OOM, panic), tentativa escalonada de reinício (até 3x) e alerta crítico caso persista.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`systemctl, journalctl, awk, mailx, curl`

## 📌 Exemplo de Execução CLI
```bash
./systemd_watchdog.sh --check-all --max-retries 3 --alert-webhook 'https://slack...'
```
