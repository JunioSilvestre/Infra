# 15 — Monitor e Notificador de Falhas em CronJobs do Kubernetes

## 🏢 Cenário de Negócios e Produção Real
Processamento de rotinas financeiras e de faturamento executadas periodicamente via CronJobs no Kubernetes.

### ⚠️ O Problema Real
CronJobs que falham silenciosamente deixam tarefas contábeis sem processar sem que a equipe perceba.

## 🚀 Arquitetura e Engenharia em Bash
Consulta contínua de jobs via kubectl buscando 'status.failed > 0' ou pods com completions incompletas, extração do log de erro com kubectl logs e envio imediato de webhook com nome do job, namespace e stack trace.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`kubectl, jq, curl, date`

## 📌 Exemplo de Execução CLI
```bash
./cronjob_watchdog.sh --namespace financial --alert-webhook '$SLACK_URL'
```
