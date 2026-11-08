# 13 — Exportador de Telemetria e Duração de Steps de Workflows para o Datadog

## 🏢 Cenário de Produção e Vida Real
Observabilidade de engenharia para identificar quais steps do pipeline estão se tornando gargalos ao longo dos meses.

### ⚠️ O Problema Real
Aumento gradual do tempo de build sem visibilidade histórica de qual etapa degradou.

## 🚀 Arquitetura e Engenharia de CI/CD
Integração via GitHub Webhooks ou ação Datadog CI Visibility coletando tempos exatos de execução por step, status de falha e taxa de sucesso em dashboards analíticos.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`datadog-ci, webhooks, jq`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
datadog-ci step finish --name 'Unit Tests'
```
