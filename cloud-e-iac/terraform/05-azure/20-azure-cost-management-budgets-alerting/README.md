# Governança Orçamentária e FinOps com Azure Cost Management e Budgets

## 1. Cenário de Produção Real
Departamentos de tecnologia frequentemente ultrapassavam as cotas mensais de gastos sem que a diretoria soubesse antes do fechamento da fatura.

## 2. O Problema Real
Controlar rigidamente os limites orçamentários por centro de custo e disparar ações automáticas de aviso e corte de gastos.

## 3. Arquitetura e Engenharia da Solução
Azure Budgets configurados no nível de Subscription e Resource Group, com notificações estruturadas por e-mail e webhooks integrados ao Teams/Slack.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Azure Cost Management, Azure Budgets, Cloud FinOps, Webhooks Automation
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
az consumption budget show --budget-name budget-dev-monthly
```
