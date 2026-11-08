# Eliminação de Conexões HTTP Abortadas (Zero-Downtime) com PreStop Hooks

## 1. Cenário de Produção Real
Usuários recebiam erros 502/504 durante deploys de novas versões porque pods eram terminados antes do Ingress remover seus endpoints.

## 2. O Problema Real
O kubelet encerra o container e envia SIGTERM em paralelo com a atualização dos endpoints do iptables/IPVS pelos nós.

## 3. Arquitetura e Engenharia da Solução
Configuração de preStop hook com sleep de 15 segundos e terminationGracePeriodSeconds adequado para garantir draining completo do tráfego.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Kubernetes Lifecycle Hooks, Nginx Ingress Controller, Pod Disruption Budgets
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
kubectl rollout restart deployment/payment-gateway && kubectl rollout status deployment/payment-gateway
```
