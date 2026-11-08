# Blindagem Contra Destruição Acidental de Bancos de Dados com prevent_destroy

## 1. Cenário de Produção Real
Risco crítico de um engenheiro júnior ou comando acidental de CI `terraform destroy` apagar bancos de dados RDS ou buckets S3 contendo terabytes de dados.

## 2. O Problema Real
Impedir em tempo de execução que o Terraform processe qualquer plano de destruição para recursos de dados fundamentais do negócio.

## 3. Arquitetura e Engenharia da Solução
Injeção de `lifecycle { prevent_destroy = true }` em todas as instâncias de RDS, tabelas DynamoDB e buckets S3 regulados por compliance.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Terraform Lifecycle, AWS RDS, S3 Glacier, Safety Guardrails
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform destroy -target=aws_db_instance.financial_core || echo 'Destruction blocked by lifecycle!'
```
