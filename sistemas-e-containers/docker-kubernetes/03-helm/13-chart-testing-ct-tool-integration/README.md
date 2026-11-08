# Pipeline de Linting e Validação Completa de Repositórios de Charts com CT Tool

## 1. Cenário de Produção Real
Manter consistência de formatação, documentação e versionamento em um monorepo contendo mais de 50 Helm charts internos.

## 2. O Problema Real
Garantir que apenas charts modificados sejam testados, lintados e instalados em um cluster temporário (kind) antes do merge do PR.

## 3. Arquitetura e Engenharia da Solução
Execução da ferramenta oficial `chart-testing` (ct) integrada a clusters efêmeros Kind (Kubernetes in Docker) no runner de CI.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Chart Testing (ct), Kind, Yamllint, Pre-commit Hooks
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
ct lint --charts charts/my-service --config .ct.yaml && ct install --charts charts/my-service
```
