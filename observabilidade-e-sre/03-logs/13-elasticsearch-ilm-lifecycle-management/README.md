# Automação do Ciclo de Vida de Índices com Elasticsearch ILM

## 1. Cenário de Produção Real
Índices de log cresciam indefinidamente em tamanho de shard, resultando em lentidão extrema de busca e corrupção de clusters.

## 2. O Problema Real
Automatizar o rollover de índices por tamanho (50GB por shard) ou idade (24 horas) e expurgar dados antigos conforme o SLA.

## 3. Arquitetura e Engenharia da Solução
Políticas declarativas de Index Lifecycle Management (ILM) no Elasticsearch com fases Hot, Warm, Cold e Delete ativadas.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Elasticsearch ILM, Index Rollover, Shard Sizing Optimization, Log Retention
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
curl -X GET 'http://elasticsearch:9200/_ilm/policy/logs-policy'
```
