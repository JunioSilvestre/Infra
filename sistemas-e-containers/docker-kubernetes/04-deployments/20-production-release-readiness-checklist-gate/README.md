# Quality Gate Automatizado de Prontidão Operacional (Readiness Gate) em CI/CD

## 1. Cenário de Produção Real
Aplicações frequentemente iam para produção sem anotações de métricas, sem PDB configurado e com limites de CPU incorretos.

## 2. O Problema Real
Bloquear o pipeline de deployment se o pacote não cumprir 100% dos requisitos não-funcionais de engenharia de confiabilidade.

## 3. Arquitetura e Engenharia da Solução
Script de auditoria OPA Conftest e kube-linter validando o artefato final antes de autorizar a mesclagem com a branch de produção.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** kube-linter, OPA Conftest, SRE Production Readiness Checklist
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
kube-linter lint rendered-manifests/ && conftest test rendered-manifests/ -p policy/
```
