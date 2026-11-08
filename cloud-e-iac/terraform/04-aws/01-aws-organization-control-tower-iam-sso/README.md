# Governança Multi-Contas com AWS Organizations, SCPs e IAM Identity Center

## 1. Cenário de Produção Real
Corporação financeira em Nova York precisa gerenciar 50 contas AWS isoladas garantindo que nenhuma conta consiga desativar CloudTrail ou criar recursos fora de us-east-1.

## 2. O Problema Real
Impor guardrails de segurança corporativos inquebráveis no nível da raiz da organização sem depender de permissões locais de cada conta.

## 3. Arquitetura e Engenharia da Solução
Provisionamento de Organizational Units (OUs), Service Control Policies (SCPs) restritivas e permission sets no AWS IAM Identity Center.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** AWS Organizations, Service Control Policies (SCP), IAM Identity Center, AWS CLI
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
aws organizations list-accounts && aws organizations list-policies-for-target --target-id ou-123
```
