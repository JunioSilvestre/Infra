# Cluster Kubernetes AKS Privado de Alta Segurança com Azure CNI Overlay

## 1. Cenário de Produção Real
Instituição hospitalar em Boston sujeita a compliance HIPAA exige que a API do Kubernetes nunca seja acessível pela internet pública.

## 2. O Problema Real
Resolver problemas de escassez de IPs privados na VNet permitindo que pods rodem em rede overlay independente de alta performance.

## 3. Arquitetura e Engenharia da Solução
Deploy do Azure Kubernetes Service (AKS) em modo Private Cluster, integração com Azure CNI Overlay, Managed Identities e Workload Identity.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Azure Kubernetes Service (AKS), Azure CNI Overlay, Private Cluster, Azure Private DNS Zone
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
az aks show --name aks-prod-eastus --resource-group rg-compute --query 'apiServerAccessProfile'
```
