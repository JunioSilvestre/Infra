# Ambientes de Sandbox com Limite Financeiro Rígido para Experimentação

## 1. Cenário de Produção Real
Novos engenheiros precisavam de liberdade para testar tecnologias e ferramentas sem risco de derrubar serviços compartilhados ou gerar custos altos.

## 2. O Problema Real
Prover contas de Sandbox 100% isoladas com destruição automática semanal de recursos e cotas de orçamento rígidas.

## 3. Arquitetura e Engenharia da Solução
Provisionamento de Sandbox VPC com AWS Budgets configurado para desligar instâncias caso a conta ultrapasse \$200 no mês.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** AWS Sandbox Account, Cloud FinOps, Developer Experience, Auto-Destruction
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform destroy -target=module.developer_sandbox -auto-approve
```
