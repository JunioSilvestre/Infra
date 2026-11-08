# Cluster AWS EKS de Produção com Karpenter, IRSA e Addons Gerenciados

## 1. Cenário de Produção Real
Fintech em Nova York precisa de um cluster Kubernetes resiliente, provisionado 100% via código e integrado ao Active Directory corporativo.

## 2. O Problema Real
Automatizar o provisionamento de nós, controle de acesso IAM por ServiceAccount (IRSA) e autoescalonamento ultrarrápido.

## 3. Arquitetura e Engenharia da Solução
Módulo Terraform provisionando control plane EKS, NodePools Karpenter com EC2 Spot, CoreDNS e AWS VPC CNI com prefix delegation.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Terraform, AWS EKS, Karpenter, IRSA, AWS VPC CNI, CoreDNS
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform apply -target=module.eks_cluster
```
