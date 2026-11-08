# Auditoria e Otimização Periódica de Alertas Inúteis e Falsos Positivos

## 1. Cenário de Produção Real
Engenheiros ignoravam alertas porque mais de 80% das notificações que chegavam no canal eram falsos positivos ou não exigiam ação.

## 2. O Problema Real
Identificar quais regras de alerta dispararam mais vezes no último mês sem gerar nenhum chamado real de incidente (alerta acionável).

## 3. Arquitetura e Engenharia da Solução
Script de auditoria consumindo histórico do Alertmanager, calculando taxa de utilidade de alertas e sugerindo aumento de thresholds.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Alert Tuning, Noise Reduction, Actionable Alerting, SRE Best Practices
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
python audit_alert_noise.py --alertmanager-url http://alertmanager:9093
```
