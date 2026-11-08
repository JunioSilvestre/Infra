# Estratégia de Migração de Banco Zero-Downtime com Padrão Expand and Contract

## 1. Cenário de Produção Real
Atualizações no banco de dados relacional com alteração de colunas travavam tabelas e causavam falha de comunicação com versões antigas da API.

## 2. O Problema Real
Garantir compatibilidade retroativa e futura permitindo que versões N e N+1 da aplicação rodem simultaneamente durante o deploy.

## 3. Arquitetura e Engenharia da Solução
Pipeline de 3 etapas no CI/CD: 1. Expand (adiciona colunas sem quebrar), 2. Deploy da nova aplicação, 3. Contract (remove colunas obsoletas).

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Expand and Contract Pattern, Flyway, PostgreSQL, Blue-Green Database
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
flyway -configFiles=flyway.expand.conf migrate && kubectl rollout status deployment/backend
```
