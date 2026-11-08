# Banco NoSQL Distribuído com Azure Cosmos DB e Escritas Multi-Região

## 1. Cenário de Produção Real
Fintech internacional exige suporte a leitura e escrita local nos Estados Unidos e Europa com garantia de latência menor que 10ms.

## 2. O Problema Real
Eliminar o gargalo de nós master centralizados distribuindo gravações geograficamente com resolução automática de conflitos.

## 3. Arquitetura e Engenharia da Solução
Cosmos DB com API NoSQL, consistência de Sessão ou Bounded Staleness e replicação automática entre East US e West Europe.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Azure Cosmos DB, Multi-Region Writes, Conflict Resolution, High Availability
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
az cosmosdb show --name cosmos-global-ledger --resource-group rg-data
```
