# Acesso Administrativo RDP e SSH via Navegador com Azure Bastion Host

## 1. Cenário de Produção Real
Administradores de sistemas precisavam acessar servidores Windows e Linux sem expor portas 3389 ou 22 para a internet pública.

## 2. O Problema Real
Prover uma camada segura de gerenciamento via portal web criptografada com TLS sem necessidade de agentes ou clientes locais.

## 3. Arquitetura e Engenharia da Solução
Deploy do Azure Bastion em uma subnet dedicada `AzureBastionSubnet` associada a IP público padrão e integração nativa com o portal.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Azure Bastion, Secure RDP/SSH, Azure Virtual Machines, Zero Public IP Access
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
az network bastion show --name bastion-eastus --resource-group rg-network
```
