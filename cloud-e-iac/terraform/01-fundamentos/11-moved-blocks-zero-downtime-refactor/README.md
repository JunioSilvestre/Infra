# Refatoração Segura de Nomes e Módulos sem Recriação via Moved Blocks

## 1. Cenário de Produção Real
Renomear um recurso de `aws_s3_bucket.data` para `aws_s3_bucket.corporate_lake` fazia o Terraform querer apagar o bucket existente e criar um novo do zero.

## 2. O Problema Real
Permitir evolução contínua da arquitetura de código sem operações manuais arriscadas de `terraform state mv` na linha de comando.

## 3. Arquitetura e Engenharia da Solução
Declaração de blocos `moved { from = aws_s3_bucket.data; to = aws_s3_bucket.corporate_lake }` versionados no repositório Git.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Terraform 1.1+ Moved Blocks, Code Refactoring, Zero Data Loss
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform plan | grep 'has moved to'
```
