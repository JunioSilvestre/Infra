# Arquitetura de Centralização de Logs com Grafana Loki em Modo Simple Scalable

## 1. Cenário de Produção Real
Fintech em Wall Street gerando 5TB de logs diários precisava de uma alternativa de baixo custo aos clusters OpenSearch de alto consumo de RAM.

## 2. O Problema Real
Armazenar e consultar petabytes de logs indexando apenas metadados de labels com dados comprimidos diretamente em buckets AWS S3.

## 3. Arquitetura e Engenharia da Solução
Deploy do Grafana Loki em modo Simple Scalable (read, write, backend) integrado com storage S3 e cache Redis em cluster.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Grafana Loki, AWS S3 Storage, LogQL, High-Scale Log Aggregation
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
logcli query '{namespace="payment"} |= "error"' --limit=50
```
