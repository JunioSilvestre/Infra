# Geração Automática de Métricas a Partir de Traces com Spanmetrics Processor

## 1. Cenário de Produção Real
Desenvolvedores frequentemente esqueciam de instrumentar métricas Prometheus em endpoints recém-criados.

## 2. O Problema Real
Gerar automaticamente métricas de latência, contagem de requisições e taxa de erro a partir dos spans de rastreamento recebidos.

## 3. Arquitetura e Engenharia da Solução
Configuração do conector `spanmetrics` no OpenTelemetry Collector exportando métricas padrão RED diretamente para o Prometheus.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Spanmetrics Connector, OpenTelemetry Collector, RED Metrics Generation
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
curl http://otel-collector:8889/metrics | grep latency_bucket
```
