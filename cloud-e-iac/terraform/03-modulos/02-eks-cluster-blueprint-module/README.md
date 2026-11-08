# Módulo Blueprint de Cluster EKS com Karpenter, IRSA e Addons Gerenciados

## 1. Cenário de Produção Real
Provisionar clusters Kubernetes levava semanas devido à complexidade de configurar OpenID Connect, CNI, EBS CSI e Karpenter.

## 2. O Problema Real
Reduzir o tempo de provisionamento de clusters de 2 semanas para 15 minutos com um módulo altamente parametrizável e testado.

## 3. Arquitetura e Engenharia da Solução
Módulo EKS modularizando control-plane, node groups gerenciados, políticas IAM de menor privilégio e mapeamento automático de aws-auth.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** AWS EKS Blueprint, Karpenter, OIDC Provider, IRSA Architecture
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform apply -target=module.eks_production
```
