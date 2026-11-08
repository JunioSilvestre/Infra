# Arquitetura de Microsserviços Orientada a Eventos com Padrão CQRS no Kubernetes

## 1. Cenário de Produção Real
Sistema bancário de alta vazão com separação estrita entre operações de escrita de ordens (Commands) e consultas rápidas de extrato (Queries).

## 2. O Problema Real
Garantir consistência eventual, escalabilidade independente de leitura e escrita e zero bloqueio de tabelas no banco de dados principal.

## 3. Arquitetura e Engenharia da Solução
Deploy de APIs em Go/Python conectadas a tópicos Kafka, banco PostgreSQL para gravação, Elasticsearch para consultas e Debezium para Change Data Capture.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Apache Kafka, Debezium CDC, Elasticsearch, PostgreSQL, Kubernetes
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
kubectl get connectors -n streaming
```
