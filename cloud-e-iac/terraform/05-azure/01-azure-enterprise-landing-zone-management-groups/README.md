# Arquitetura de Enterprise Landing Zone (CAF) com Management Groups e RBAC

## 1. Cenário de Produção Real
Grande seguradora operando no leste dos EUA precisa organizar 40 assinaturas Azure com segregação de ambientes (Corp, Online, Sandbox).

## 2. O Problema Real
Garantir governança unificada de políticas, cobrança e segurança seguindo o Cloud Adoption Framework (CAF) da Microsoft.

## 3. Arquitetura e Engenharia da Solução
Hierarquia de Management Groups, assinaturas estruturadas e atribuições granulares de Azure RBAC vinculadas a grupos do Microsoft Entra ID.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Azure Management Groups, Cloud Adoption Framework, Microsoft Entra ID (Azure AD), Azure CLI
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
az account management-group list && az role assignment list --assignee <GROUP_ID>
```
