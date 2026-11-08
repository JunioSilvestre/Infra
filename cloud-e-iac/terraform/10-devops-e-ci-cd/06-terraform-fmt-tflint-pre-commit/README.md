# Padronização e Qualidade de Código com Pre-Commit Hooks e TFLint

## 1. Cenário de Produção Real
Pull Requests eram abertos com código desformatado, variáveis não utilizadas e erros sintáticos simples que atrasavam as revisões.

## 2. O Problema Real
Garantir que nenhum commit com erros de formatação ou más práticas de HCL seja criado na máquina do desenvolvedor.

## 3. Arquitetura e Engenharia da Solução
Configuração de `.pre-commit-config.yaml` executando `terraform_fmt`, `terraform_tflint`, `terraform_docs` e detecção de credenciais vazadas.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Pre-commit Framework, TFLint, terraform_fmt, Git Hooks, Developer Experience
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
pre-commit run --all-files
```
