# 05 — Watchdog Pós-Deploy com Rollback Automático Baseado em Taxa de Erro HTTP

## 🏢 Cenário de Produção e Vida Real
Intervenção autônoma imediata caso o novo deploy degrade a aplicação em produção.

### ⚠️ O Problema Real
Engenheiros vão embora após o deploy e a aplicação começa a falhar 10 minutos depois.

## 🚀 Arquitetura e Engenharia de CI/CD
Monitoramento em alta frequência das métricas de requisição durante os primeiros 15 minutos pós-deploy, e disparo de comando atômico de reversão ('helm rollback' ou 'kubectl rollout undo') se a taxa de 5xx passar de 2%.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`curl, jq, kubectl, helm`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
./deploy_watchdog.sh --deployment web-api --error-threshold-pct 2 --window-min 15
```
