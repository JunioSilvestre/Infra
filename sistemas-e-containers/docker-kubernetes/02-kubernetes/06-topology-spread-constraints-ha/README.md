# Garantia de Alta Disponibilidade Multi-AZ com Topology Spread Constraints

## 1. Cenário de Produção Real
Queda de uma Availability Zone (AZ) na AWS causava indisponibilidade de microsserviços porque o scheduler concentrava réplicas no mesmo nó.

## 2. O Problema Real
Distribuir réplicas de pods uniformemente entre zonas de disponibilidade e racks físicos sem depender de podAntiAffinity rígido que trava agendamento.

## 3. Arquitetura e Engenharia da Solução
Implementação de topologySpreadConstraints nos Deployments com maxSkew=1 e topologyKey=topology.kubernetes.io/zone.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Kubernetes Scheduling, Topology Spread Constraints, Multi-AZ Resilience
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
kubectl get pods -o wide -l app=core-banking
```
