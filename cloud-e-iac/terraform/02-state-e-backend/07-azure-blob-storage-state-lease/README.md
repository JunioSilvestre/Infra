# Implementação de Backend Remoto no Azure Blob Storage com Bloqueio de Lease

## 1. Cenário de Produção Real
Corporação multinacional operando ambiente híbrido no Azure precisa de gestão de estado com alta disponibilidade no leste dos EUA.

## 2. O Problema Real
Armazenar estados no Azure Blob com criptografia por chaves gerenciadas pelo cliente (CMK) e bloqueio automático de concorrência via Blob Leases.

## 3. Arquitetura e Engenharia da Solução
Configuração do backend `azurerm` utilizando Service Principal com certificado e RBAC granular no Storage Account.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Azure Blob Storage, Blob Lease Locking, Azure Key Vault, Azure RBAC
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform init -backend-config=azure.backend.tfvars
```
