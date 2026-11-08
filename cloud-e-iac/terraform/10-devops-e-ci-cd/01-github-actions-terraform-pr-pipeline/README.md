# Pipeline Completo de Validação de Infraestrutura em PRs com GitHub Actions

## 1. Cenário de Produção Real
Fintech em NY necessita que cada alteração de infraestrutura passe por validação sintática, linting, cálculo de custos e plano visual.

## 2. O Problema Real
Impedir que código quebrado ou inseguro seja mesclado na branch principal, mantendo transparência total no Pull Request.

## 3. Arquitetura e Engenharia da Solução
Workflow do GitHub Actions com etapas de `fmt -check`, `validate`, `tflint`, `tfsec`, `infracost` e postagem automática de comentário do plan.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** GitHub Actions, Terraform CLI, Infracost, tfsec, TFLint, Pull Request Automation
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
gh workflow run terraform-ci.yaml --ref feature/new-database
```
