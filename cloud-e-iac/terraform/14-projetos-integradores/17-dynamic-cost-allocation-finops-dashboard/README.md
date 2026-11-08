# Plataforma de Alocação Granular de Custos de Nuvem e Governança FinOps em NY

## 1. Cenário de Produção Real
Diretoria financeira de seguradora em NY não conseguia identificar os custos reais de cada produto devido ao compartilhamento de infraestrutura.

## 2. O Problema Real
Distribuir os custos de servidores, bancos, redes e Kubernetes com precisão cirúrgica por produto e squad de engenharia.

## 3. Arquitetura e Engenharia da Solução
Configuração de exportação de AWS Cost and Usage Reports (CUR) para S3, catálogo de dados no AWS Glue e dashboards analíticos no QuickSight.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Terraform, AWS CUR, Amazon Athena, AWS Glue, Amazon QuickSight, Cloud FinOps
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform apply -target=module.finops_cost_allocation
```
