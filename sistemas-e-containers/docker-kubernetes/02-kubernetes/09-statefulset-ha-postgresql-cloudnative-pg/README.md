# Orquestração de Banco de Dados de Alta Disponibilidade com CloudNative-PG Operator

## 1. Cenário de Produção Real
Cargas transacionais de dados exigem réplicas de leitura escaláveis, failover automático e backups contínuos em storage em nuvem.

## 2. O Problema Real
Gerenciar bancos relacionais no Kubernetes tradicionalmente falha por complexidade de split-brain e gerência imperfeita de volumes.

## 3. Arquitetura e Engenharia da Solução
Deploy do operador CloudNative-PG provisionando cluster PostgreSQL de 3 nós com streaming replication assíncrona, Barman Cloud e WAL archiving.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** CloudNative-PG Operator, PostgreSQL 16, WAL Archiving, S3 Storage
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
kubectl get cluster -n database pg-primary -o wide
```
