# 06 — Watchdog e Rollback Automatizado de Releases Helm em Kubernetes

## 🏢 Cenário de Negócios e Produção Real
Deploys de microsserviços em clusters Kubernetes via Helm que entram em crash ou não passam nos health checks de readiness.

### ⚠️ O Problema Real
Deploy quebrado permanece em produção até um operador humano notar e rodar o comando manual de rollback.

## 🚀 Arquitetura e Engenharia em Bash
Execução do upgrade com 'helm upgrade --install', monitoramento dos pods do rollout (kubectl rollout status --timeout=120s), captura de logs de crash e disparo imediato de 'helm rollback <release>' em caso de timeout.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`helm, kubectl, jq, logger`

## 📌 Exemplo de Execução CLI
```bash
./helm_deploy_watchdog.sh --release core-api --chart ./charts/api --timeout 180s
```
