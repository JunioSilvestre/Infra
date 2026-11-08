# Migração e Unificação de Alertas Legados para o Grafana Alerting

## 1. Cenário de Produção Real
Alertas disparados pelo Grafana entravam em conflito com os alertas do Prometheus, gerando notificações desencontradas no canal de suporte.

## 2. O Problema Real
Centralizar e unificar o gerenciamento de regras de alerta no novo motor Grafana Alerting com políticas de roteamento e silenciamento.

## 3. Arquitetura e Engenharia da Solução
Criação declarativa de Alert Rules, Contact Points e Notification Policies via API do Grafana integradas ao Slack e PagerDuty.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Grafana Alerting, Contact Points, Notification Policies, Incident Escalation
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
curl -X POST -H 'Content-Type: application/json' -d @alert_rule.json http://grafana.corp/api/v1/provisioning/alert-rules
```
