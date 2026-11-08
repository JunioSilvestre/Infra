# Teste de Carga de Alta Concorrência (100k RPS) com k6 e Cluster Autoscaler

## 1. Cenário de Produção Real
Validar se a arquitetura em nuvem escala nós e pods adequadamente antes de campanhas de alta demanda (como Black Friday e Super Bowl).

## 2. O Problema Real
Descobrir o gargalo exato do sistema (CPU, banco, conexões TCP, largura de banda) sob carga extrema de usuários simultâneos.

## 3. Arquitetura e Engenharia da Solução
Deploy de operadores de teste k6 distribuídos gerando carga progressiva e acompanhamento do Cluster Autoscaler adicionando nós EC2.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** k6 Distributed Testing, Kubernetes Cluster Autoscaler, Metrics Server, Grafana
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
kubectl apply -f k6-distributed-test.yaml && kubectl get nodes -w
```
