# 10 — Pusher de Heartbeat e Monitoramento Sintético para Uptime Kuma / Healthchecks.io

## 🏢 Cenário de Negócios e Produção Real
Monitoramento passivo de scripts de infraestrutura (dead man's snitch).

### ⚠️ O Problema Real
Se o próprio script de backup travar e não rodar, nenhum alerta tradicional é emitido.

## 🚀 Arquitetura e Engenharia em Bash
Wrapper que envolve a execução de qualquer tarefa em Bash, mede o tempo de execução, envia ping inicial ('start'), executa a tarefa, captura o código de retorno e envia o ping de sucesso ou falha com os logs no corpo da requisição HTTP.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`curl, date, logger`

## 📌 Exemplo de Execução CLI
```bash
./heartbeat_wrapper.sh --url 'https://status.corp.net/api/push/token' -- /opt/backup.sh
```
