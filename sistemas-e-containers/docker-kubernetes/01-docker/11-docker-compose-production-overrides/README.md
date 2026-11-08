# Arquitetura de Ambientes com Docker Compose e Matriz de Overrides Dinâmicos

## 1. Cenário de Produção Real
Time de desenvolvimento precisa rodar localmente a mesma topologia de microsserviços usada em homologação, variando apenas portas e mounts.

## 2. O Problema Real
Evitar duplicação de dezenas de arquivos compose e garantir que secrets não sejam commitados no repositório.

## 3. Arquitetura e Engenharia da Solução
Estratégia de composição modular usando `docker-compose.yml`, `docker-compose.override.yml` e arquivos `.env` validados.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Docker Compose v2, dotenv, YAML Anchors, Makefiles
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
docker compose -f docker-compose.yml -f docker-compose.prod.yml config --quiet
```
