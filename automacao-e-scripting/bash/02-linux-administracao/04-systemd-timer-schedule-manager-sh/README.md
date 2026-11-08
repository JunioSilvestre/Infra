# 04 — Gerenciador e Auditor de Agendamentos Systemd Timers

## 🏢 Cenário de Negócios e Produção Real
Migração de crontabs legadas e desordenadas para Systemd Timers corporativos com rastreabilidade.

### ⚠️ O Problema Real
Crontabs tradicionais não gravam logs estruturados de execução, falham silenciosamente e não controlam dependências de rede.

## 🚀 Arquitetura e Engenharia em Bash
Geração dinâmica de pares .service e .timer em /etc/systemd/system, validação com systemd-analyze verify, cálculo de próximas execuções com systemctl list-timers.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`systemctl, systemd-analyze, envsubst, sed`

## 📌 Exemplo de Execução CLI
```bash
./timer_manager.sh --create-timer backup-sync --on-calendar '*-*-* 02:00:00' --exec '/usr/local/bin/sync.sh'
```
