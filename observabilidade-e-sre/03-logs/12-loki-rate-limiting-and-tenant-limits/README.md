# Governança e Rate Limiting de Ingestão de Logs no Grafana Loki

## 1. Cenário de Produção Real
Uma aplicação com loop de erro gravava 500MB de logs por segundo, ameaçando derrubar a memória de todo o cluster Loki.

## 2. O Problema Real
Impor limites rígidos de ingestão de megabytes por segundo e número máximo de streams simultâneos por tenant.

## 3. Arquitetura e Engenharia da Solução
Ajuste fino no arquivo de configuração do Loki definindo `ingestion_rate_mb`, `ingestion_burst_size_mb` e `max_streams_per_user`.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Loki Limits Config, Multi-Tenant Governance, Ingestion Safeguards
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
curl http://loki:3100/ready
```
