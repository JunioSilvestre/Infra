# Cluster AKS Privado de Alta Segurança com Azure CNI Overlay e AAD Pod Identity

## 1. Cenário de Produção Real
Instituição hospitalar em Boston exige que o plano de controle do Kubernetes e os nós não possuam nenhum IP público acessível pela internet.

## 2. O Problema Real
Resolver limitações de esgotamento de IPs na rede corporativa utilizando a tecnologia moderna de overlay de rede do Azure.

## 3. Arquitetura e Engenharia da Solução
Provisionamento de cluster AKS privado integrado a Private DNS Zones, Azure CNI Overlay e autenticação baseada no Microsoft Entra ID.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Terraform, Azure AKS, Azure CNI Overlay, Entra ID Workload Identity, Private DNS
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform plan -target=module.aks_private
```
