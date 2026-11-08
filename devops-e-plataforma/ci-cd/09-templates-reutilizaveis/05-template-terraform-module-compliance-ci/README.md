# 05 — Template Reutilizável para Módulos Terraform com Validação, Lint e Testes

## 🏢 Cenário de Produção e Vida Real
Governança no desenvolvimento de módulos Terraform compartilhados entre diferentes squads da empresa.

### ⚠️ O Problema Real
Módulos publicados com erros de sintaxe, documentação desatualizada e sem testes de conformidade.

## 🚀 Arquitetura e Engenharia de CI/CD
Pipeline automatizado com 'terraform fmt -check', validação estática com 'tflint', geração automática de documentação README com 'terraform-docs' e testes unitários de infraestrutura com Terratest ou 'terraform test'.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`tflint, terraform-docs, terratest`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
terraform-docs markdown table --output-file README.md .
```
