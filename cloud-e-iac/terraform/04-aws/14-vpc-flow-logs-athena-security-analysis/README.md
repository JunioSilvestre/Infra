# Auditoria e Análise Forense de Tráfego de Rede com VPC Flow Logs e Athena

## 1. Cenário de Produção Real
Investigações de segurança exigiam descobrir quais IPs externos tentaram se comunicar com servidores de banco de dados nos últimos 90 dias.

## 2. O Problema Real
Processar bilhões de registros de rede sem sobrecarregar bancos de dados e realizar consultas analíticas rápidas em SQL.

## 3. Arquitetura e Engenharia da Solução
Configuração de VPC Flow Logs gravando em formato Apache Parquet no S3, integrado ao AWS Glue Data Catalog e consultado via Amazon Athena.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** AWS VPC Flow Logs, Apache Parquet, Amazon Athena, AWS Glue
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
aws athena start-query-execution --query-string 'SELECT * FROM vpc_logs WHERE action="REJECT" LIMIT 10;'
```
