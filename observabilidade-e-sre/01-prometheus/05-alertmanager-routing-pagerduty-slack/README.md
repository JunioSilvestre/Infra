# Roteamento Inteligente de Alertas e Inibição de Ruído com Alertmanager

## 1. Cenário de Produção Real
Engenheiros de plantão recebiam 500 alertas simultâneos quando um switch de rede caía, gerando fadiga de alertas (alert fatigue).

## 2. O Problema Real
Agrupar alarmes relacionados, inibir alertas secundários quando o alerta raiz já disparou e rotear por severidade para Slack ou PagerDuty.

## 3. Arquitetura e Engenharia da Solução
Configuração avançada do `alertmanager.yaml` com `route` hierárquico, `group_by`, `inhibit_rules` e silenciamentos automáticos.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Prometheus Alertmanager, PagerDuty Integration, Slack Webhooks, Alert Fatigue Reduction
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
amtool check-config alertmanager.yaml && amtool silence add alertname=NodeDown
```
