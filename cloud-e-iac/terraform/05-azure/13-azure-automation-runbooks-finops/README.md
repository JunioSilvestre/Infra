# Desligamento Automatizado de VMs e Ambientes de Teste com Azure Automation

## 1. Cenário de Produção Real
Máquinas virtuais de desenvolvimento e bancos de dados de teste permaneciam ligados à noite e finais de semana gerando desperdício financeiro.

## 2. O Problema Real
Automatizar o desligamento e inicialização programada de recursos não-produtivos economizando até 60% na fatura do Azure.

## 3. Arquitetura e Engenharia da Solução
Azure Automation Account com Runbooks em PowerShell/Python autenticados via Managed Identity e agendamentos cron integrados.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Azure Automation, PowerShell Runbooks, Azure Managed Identities, Cloud FinOps
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
az automation runbook show --automation-account-name auto-finops --name Stop-DevVMs --resource-group rg-ops
```
