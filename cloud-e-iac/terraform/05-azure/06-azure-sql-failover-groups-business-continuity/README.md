# Banco Relacional Crítico com Azure SQL Database e Auto-Failover Groups

## 1. Cenário de Produção Real
Sistemas de pagamento precisam garantir continuidade operacional mesmo se o datacenter East US sofrer uma parada completa.

## 2. O Problema Real
Sincronização assíncrona contínua de dados entre as regiões East US e Central US com chaveamento transparente de DNS.

## 3. Arquitetura e Engenharia da Solução
Azure SQL Database provisionado com Auto-Failover Groups, endpoint de leitura/escrita único e auditoria de logs gravada no Log Analytics.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Azure SQL Database, Auto-Failover Groups, Disaster Recovery, Transparent Data Encryption
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
az sql failover-group show --name fg-financial --server srv-eastus --resource-group rg-data
```
