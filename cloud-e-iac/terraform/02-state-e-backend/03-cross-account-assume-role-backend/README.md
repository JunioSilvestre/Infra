# Acesso a Estado Remoto em Arquitetura Multi-Contas AWS com AssumeRole

## 1. Cenário de Produção Real
Empresa com contas AWS separadas (Security, Dev, Prod) exigia que o estado ficasse centralizado na conta de Governança com mínimo privilégio.

## 2. O Problema Real
Permitir que os runners de CI/CD assumam roles temporárias via STS para ler e gravar estado sem compartilhar credenciais estáticas de longa duração.

## 3. Arquitetura e Engenharia da Solução
Configuração do bloco `backend "s3"` com parâmetro `role_arn = "arn:aws:iam::1111111:role/TerraformStateAccessRole"`.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** AWS STS, AssumeRole, Multi-Account AWS Architecture, Terraform S3 Backend
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform init -reconfigure
```
