# Orquestração de Bancos de Dados Efêmeros para Testes de Regressão em CI

## 1. Cenário de Produção Real
Pipelines de validação com testes ponta a ponta sofriam com concorrência e sujeira de dados em bancos compartilhados.

## 2. O Problema Real
Garantir ambientes de dados 100% isolados, pré-populados e destruídos ao final de cada suíte de testes de pull request.

## 3. Arquitetura e Engenharia da Solução
Automação de ciclo de vida com Docker CLI instanciando PostgreSQL e Redis em redes descartáveis com healthchecks rigorosos.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Docker CLI, PostgreSQL, Testcontainers Pattern, Bash Hooks
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
docker run --rm -d --name pg-test -e POSTGRES_PASSWORD=ci -p 5433:5432 postgres:15-alpine && ./wait-for-pg.sh
```
