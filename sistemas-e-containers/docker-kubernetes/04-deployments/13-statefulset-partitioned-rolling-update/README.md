# Rolling Update Particionado e Controlado em Cargas de Trabalho StatefulSet

## 1. Cenário de Produção Real
Clusters distribuídos (ex: Apache Cassandra, Kafka) sofrem corrupção se múltiplos nós forem reiniciados simultaneamente durante um deploy.

## 2. O Problema Real
Atualizar apenas um nó específico por vez sob comando estrito de engenharia antes de permitir que outros nós recebam o novo binário.

## 3. Arquitetura e Engenharia da Solução
Configuração do campo `spec.updateStrategy.rollingUpdate.partition` no StatefulSet atualizando apenas réplicas acima do ordinal definido.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Kubernetes StatefulSet, Partitioned Updates, Distributed Storage Stability
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
kubectl patch statefulset kafka-cluster -p '{"spec":{"updateStrategy":{"rollingUpdate":{"partition":2}}}}'
```
