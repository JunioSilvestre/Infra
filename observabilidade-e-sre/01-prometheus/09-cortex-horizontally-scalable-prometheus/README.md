# Arquitetura de Prometheus Multi-Tenant com Cortex em Larga Escala

## 1. Cenário de Produção Real
Corporação com 60 squads de engenharia precisa oferecer monitoramento como serviço (MaaS) com isolamento estrito de dados e faturamento.

## 2. O Problema Real
Impedir que consultas pesadas de um time afetem a ingestão de métricas de outros times mantendo retenção de anos em storage barato.

## 3. Arquitetura e Engenharia da Solução
Deploy do cluster Cortex com Ring Architecture (Consul/etcd), Ingesters, Queriers e autenticação multi-tenant via cabeçalho `X-Scope-OrgID`.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Cortex, Multi-Tenancy Prometheus, Consul Ring, Scalable Observability
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
cortex -config.file=cortex.yaml
```
