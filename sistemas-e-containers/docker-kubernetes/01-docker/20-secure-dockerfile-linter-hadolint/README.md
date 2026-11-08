# Esteira de Verificação Estática de Dockerfiles com Hadolint e OPA Conftest

## 1. Cenário de Produção Real
Desenvolvedores frequentemente inseriam comandos inseguros como `ADD`, `chmod 777` e esqueciam de fixar versões de pacotes em Dockerfiles.

## 2. O Problema Real
Prevenir práticas inseguras de conteinerização antes do commit através de regras de conformidade estáticas automatizadas.

## 3. Arquitetura e Engenharia da Solução
Pipeline de CI com Hadolint validando boas práticas do Dockerfile e Conftest validando políticas customizadas escritas em Rego.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Hadolint, Open Policy Agent (OPA), Conftest, Rego, Pre-commit Hooks
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
hadolint --failure-threshold error Dockerfile && conftest test Dockerfile -p policy/
```
