# Banco Relacional Elástico com Aurora Serverless v2 e Ajuste Fino de ACUs

## 1. Cenário de Produção Real
Ambientes de desenvolvimento e homologação ficavam ligados gerando custos altos com bancos de dados tradicionais com instâncias fixas.

## 2. O Problema Real
Adequar o consumo de computação do banco de dados instantaneamente à demanda real de transações, escalando de 0.5 a 16 ACUs conforme a carga.

## 3. Arquitetura e Engenharia da Solução
Cluster Aurora Serverless v2 PostgreSQL configurado com ranges dinâmicos de ACU (Aurora Capacity Units) e parâmetros de conexão otimizados.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** AWS Aurora Serverless v2, PostgreSQL, Cloud FinOps, CloudWatch Metrics
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
aws rds describe-db-clusters --db-cluster-identifier dev-aurora-cluster
```
