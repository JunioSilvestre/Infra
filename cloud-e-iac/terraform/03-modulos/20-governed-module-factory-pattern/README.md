# Padrão Factory de Módulos Corporativos com Validação OPA Conftest no CI

## 1. Cenário de Produção Real
Auditoria corporativa exigia que qualquer módulo novo criado por qualquer time cumprisse 100% das diretrizes de segurança da empresa.

## 2. O Problema Real
Bloquear a publicação de qualquer módulo que não contenha testes unitários, documentação automática e regras de segurança aprovadas.

## 3. Arquitetura e Engenharia da Solução
Pipeline de CI com verificação de conformidade via OPA Conftest, linting com TFLint e validação de cobertura de testes com Terratest.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** OPA Conftest, TFLint, Module Factory Pattern, Enterprise Governance
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
conftest test ./modules/* -p policy/modules.rego
```
