# Arquitetura de Harbor Enterprise em Alta Disponibilidade com Replicação Multi-Região

## 1. Cenário de Produção Real
Corporação financeira operando em Manhattan e Nova Jersey precisa de um registry interno altamente disponível que replique imagens instantaneamente.

## 2. O Problema Real
Eliminar ponto único de falha no armazenamento de containers e garantir que filiais tenham acesso local rápido a imagens críticas.

## 3. Arquitetura e Engenharia da Solução
Deploy do Harbor via Helm com storage backend distribuído S3, banco PostgreSQL em replicação, cache Redis Sentinel e replicação bidirecional.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Harbor Registry, S3 Storage, PostgreSQL HA, Redis Sentinel, Helm
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
helm status harbor -n harbor && curl -u admin:Harbor123 https://registry.corp.internal/api/v2.0/health
```
