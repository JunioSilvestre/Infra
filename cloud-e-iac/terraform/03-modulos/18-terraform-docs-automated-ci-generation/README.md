# Automação de Documentação Técnica de Módulos com terraform-docs em Pre-commit

## 1. Cenário de Produção Real
Documentações de módulos (tabelas de inputs, outputs e requisitos) ficavam frequentemente desatualizadas após refatorações no código.

## 2. O Problema Real
Garantir que todo commit ou pull request atualize automaticamente a documentação do `README.md` do módulo com perfeição matemática.

## 3. Arquitetura e Engenharia da Solução
Configuração de pre-commit hook com `terraform-docs markdown table --output-file README.md ./` integrado ao pipeline de CI.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** terraform-docs, Pre-commit Hooks, Automated Documentation, Developer Experience
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform-docs markdown table ./modules/enterprise-vpc
```
