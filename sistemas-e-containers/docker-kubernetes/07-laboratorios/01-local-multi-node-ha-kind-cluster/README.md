# Laboratório de Cluster Multi-Control-Plane e Multi-Worker com Kind

## 1. Cenário de Produção Real
Engenheiros precisam testar upgrades de Kubernetes e perda de nós do control-plane localmente sem gastar com instâncias de nuvem.

## 2. O Problema Real
Provisionar uma topologia idêntica à de produção (3 control-planes + 3 workers + balanceador HAProxy) em segundos dentro do Docker.

## 3. Arquitetura e Engenharia da Solução
Criação de manifesto declarativo do Kind com nós dedicados, mapeamento de portas e provisionamento de balanceador de carga externo.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Kind (Kubernetes in Docker), Docker Engine, HAProxy Load Balancer, Multi-Node HA
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
kind create cluster --config kind-ha-config.yaml && kubectl get nodes -o wide
```
