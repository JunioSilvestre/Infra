# 20 — Detector de Anomalias de Custo Diário e Alertas de Faturamento em Nuvem

## 🏢 Cenário de Negócios e Produção Real
Monitoramento financeiro diário para evitar surpresas no final do mês causadas por recursos esquecidos ligados ou loops infinitos.

### ⚠️ O Problema Real
Um loop de chamadas em funções Lambda ou tráfego de egress descontrolado gera contas de dezenas de milhares de dólares em um único fim de semana.

## 🚀 Arquitetura e Engenharia em Bash
Consulta diária via AWS Cost Explorer API (aws ce get-cost-and-usage), comparação do custo das últimas 24h com a média dos últimos 30 dias, detecção de desvio acima de 20% e disparo urgente de alarme no Slack/Teams.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`aws, jq, awk, bc, curl`

## 📌 Exemplo de Execução CLI
```bash
./cost_anomaly_watchdog.sh --threshold-pct 20 --slack-webhook '$SLACK_URL'
```
