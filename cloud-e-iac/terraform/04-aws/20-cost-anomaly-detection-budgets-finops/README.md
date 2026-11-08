# Governança Financeira com AWS Cost Anomaly Detection e AWS Budgets

## 1. Cenário de Produção Real
Instâncias esquecidas ligadas ou loops infinitos de Lambda geravam surpresas desagradáveis na fatura mensal de nuvem da empresa.

## 2. O Problema Real
Detectar picos anômalos de custos em poucas horas e acionar alarmes imediatos antes que o orçamento mensal seja ultrapassado.

## 3. Arquitetura e Engenharia da Solução
Configuração do AWS Cost Anomaly Detection baseado em inteligência artificial e criação de AWS Budgets com alertas estruturados no Slack.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** AWS Cost Anomaly Detection, AWS Budgets, Cloud FinOps, Cost Governance
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
aws ce get-anomalies --date-interval Start=2026-10-01,End=2026-11-01
```
