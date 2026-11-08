# Garantia de Disponibilidade Durante Upgrades de Cluster com PodDisruptionBudgets

## 1. Cenário de Produção Real
Atualizações do plano de dados (Node Upgrades) derrubavam instâncias de serviços críticos porque todos os pods do serviço eram drenados ao mesmo tempo.

## 2. O Problema Real
Assegurar que upgrades do Kubernetes respeitem o número mínimo de instâncias operacionais exigidas pelo negócio.

## 3. Arquitetura e Engenharia da Solução
Implementação sistemática de PDBs (PodDisruptionBudget) com `minAvailable` ou `maxUnavailable` em 100% dos serviços de produção.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** PodDisruptionBudget (PDB), kubectl drain, EKS Node Upgrades
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
kubectl get pdb -A && kubectl drain node-pool-1-abc --ignore-daemonsets
```
