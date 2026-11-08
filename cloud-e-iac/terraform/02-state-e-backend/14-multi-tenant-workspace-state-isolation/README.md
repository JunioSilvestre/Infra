# Segregação de Ambientes Multi-Tenant com Terraform Workspaces Nativos

## 1. Cenário de Produção Real
Pequenas operações precisavam provisionar ambientes idênticos de Dev, QA e Staging sem duplicar arquivos de código de infraestrutura.

## 2. O Problema Real
Manter isolamento estrito de arquivos de estado em diretórios separados dentro do mesmo bucket S3 (`env:/dev`, `env:/qa`).

## 3. Arquitetura e Engenharia da Solução
Utilização de `terraform workspace new/select` associado a variáveis dinâmicas parametrizadas pelo workspace atual (`terraform.workspace`).

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Terraform Workspaces, Environment Isolation, Multi-Tenant IaC
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform workspace select production && terraform plan
```
