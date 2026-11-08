# Eliminação de Segredos Estáticos em Pods com Microsoft Entra Workload Identity

## 1. Cenário de Produção Real
Aplicações no Kubernetes usavam Service Principals com senhas gravadas em arquivos de configuração que expiravam e derrubavam sistemas.

## 2. O Problema Real
Permitir que pods do Kubernetes se autentiquem nativamente no Azure Key Vault e Storage usando federação de tokens OpenID Connect (OIDC).

## 3. Arquitetura e Engenharia da Solução
Configuração do Entra Workload Identity no AKS, mapeando ServiceAccounts do Kubernetes para identidades gerenciadas do Azure sem senhas.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Microsoft Entra ID, Workload Identity, Kubernetes OIDC Federation, Zero Secrets
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
az identity show --name id-order-processor --resource-group rg-identity
```
