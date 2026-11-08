# 12 — Wrapper Anti-Sobrecarga e Lock Concorrente para Tarefas Cron com flock

## 🏢 Cenário de Negócios e Produção Real
Scripts de backup ou sincronização pesados executados via Cron que demoram mais que o intervalo agendado, gerando múltiplos processos concorrentes.

### ⚠️ O Problema Real
Empilhamento de instâncias concorrentes esgota CPU, I/O e memória do servidor.

## 🚀 Arquitetura e Engenharia em Bash
Implementação de wrapper em Bash utilizando descritores de arquivo e 'flock -n' com timeout configurável, log de tentativas rejeitadas e métrica de duração.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`flock, date, logger, exec`

## 📌 Exemplo de Execução CLI
```bash
./cron_guard.sh --lockfile /var/lock/backup.lock --timeout 10 -- /usr/local/bin/run_backup.sh
```
