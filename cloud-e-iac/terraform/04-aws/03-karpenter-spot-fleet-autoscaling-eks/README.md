# Otimização Extrema de Custos de Computação com Karpenter e Instâncias Spot

## 1. Cenário de Produção Real
Fintech gastava centenas de milhares de dólares com instâncias On-Demand subutilizadas em clusters Kubernetes de processamento analítico.

## 2. O Problema Real
Substituir o Cluster Autoscaler legado pelo Karpenter, provisionando a instância correta (just-in-time) em menos de 30 segundos usando Spot.

## 3. Arquitetura e Engenharia da Solução
Configuração de NodePools e NodeClasses do Karpenter com diversificação de famílias de instâncias EC2, interrupção graceful e consolidation.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Karpenter, AWS EKS, EC2 Spot Instances, Cloud FinOps, EventBridge
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
kubectl get nodepool default -o yaml
```
