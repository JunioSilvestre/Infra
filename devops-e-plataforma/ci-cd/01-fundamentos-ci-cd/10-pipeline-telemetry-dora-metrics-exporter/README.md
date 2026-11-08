# 10 — Coletor de Telemetria de CI/CD para Métricas DORA (Deployment Frequency, Lead Time)

## 🏢 Cenário de Produção e Vida Real
Gestão de engenharia medindo maturidade e velocidade de entrega contínua.

### ⚠️ O Problema Real
Falta de dados objetivos sobre frequência de deploy e tempo de recuperação de falhas (MTTR).

## 🚀 Arquitetura e Engenharia de CI/CD
Webhooks de eventos de término de pipeline gravando durações, commits e status em banco analítico (ClickHouse/PostgreSQL) para dashboards de métricas DORA.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`curl, jq, postgresql, grafana`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
./record_dora_metric.sh --event deploy --status success --lead-time-sec 1420
```
