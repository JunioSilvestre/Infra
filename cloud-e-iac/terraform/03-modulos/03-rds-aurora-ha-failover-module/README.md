# Módulo de Banco de Dados Relacional Aurora PostgreSQL com Réplicas de Leitura

## 1. Cenário de Produção Real
Bancos de dados de missão crítica eram configurados sem backups automáticos em horários adequados, sem criptografia KMS e sem insights de performance.

## 2. O Problema Real
Garantir que qualquer novo banco provisionado pela empresa nasça automaticamente em alta disponibilidade, com réplicas e telemetria ativada.

## 3. Arquitetura e Engenharia da Solução
Módulo Aurora Serverless v2/Provisioned encapsulando Cluster, Instâncias, Subnet Groups, Parameter Groups e alarmes CloudWatch nativos.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** AWS Aurora PostgreSQL, RDS Performance Insights, KMS, Parameter Groups
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform plan -target=module.aurora_cluster
```
