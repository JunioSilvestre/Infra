# Laboratório de Bloqueio de Não-Conformidade com OPA Conftest e Trivy

## 1. Cenário de Produção Real
Ensinar desenvolvedores na prática como os guardrails de segurança barram alterações perigosas antes que cheguem à nuvem.

## 2. O Problema Real
Escrever uma regra de compliance que impeça buckets S3 públicos e testar intencionalmente o bloqueio de um Pull Request.

## 3. Arquitetura e Engenharia da Solução
Criação de arquivos Rego customizados, execução de testes unitários da regra de compliance e validação contra manifests HCL.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** OPA Conftest, Rego Policies, Policy as Code, CI/CD Security Training
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
conftest test main.tf -p policies/s3_compliance.rego
```
