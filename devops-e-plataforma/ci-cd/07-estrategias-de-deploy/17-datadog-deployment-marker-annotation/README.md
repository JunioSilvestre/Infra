# 17 — Registrador de Marcadores de Deploy (Deployment Markers) no Datadog e New Relic

## 🏢 Cenário de Produção e Vida Real
Correlação visual nos gráficos de observabilidade entre o exato momento de um deploy e alterações em taxas de erro ou CPU.

### ⚠️ O Problema Real
Falta de visibilidade temporal sobre qual release introduziu uma anomalia identificada no gráfico de métricas.

## 🚀 Arquitetura e Engenharia de CI/CD
Chamada à API de eventos do Datadog/New Relic no término do pipeline registrando a versão, autor, link do PR e commit correspondente, gerando uma linha vertical nos dashboards analíticos.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`curl, jq, datadog-api`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
./record_deploy_event.sh --service checkout --version v2.4.0 --provider datadog
```
