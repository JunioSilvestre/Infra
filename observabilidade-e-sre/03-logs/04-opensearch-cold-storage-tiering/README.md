# Arquitetura de Armazenamento em Camadas no OpenSearch com UltraWarm e Cold

## 1. Cenário de Produção Real
Cluster de logs consumia centenas de instâncias EC2 com discos NVMe caros para armazenar logs de auditoria de 2 anos atrás.

## 2. O Problema Real
Reduzir o custo de storage de logs em até 85% mantendo os dados consultáveis via SQL e OpenSearch Dashboards.

## 3. Arquitetura e Engenharia da Solução
Implementação de políticas de Index State Management (ISM) movendo índices de Hot para UltraWarm aos 7 dias e Cold aos 30 dias.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** AWS OpenSearch, Index State Management (ISM), UltraWarm Storage, FinOps
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
curl -X GET 'https://opensearch.corp.internal/_plugins/_ism/explain/logs-*'
```
