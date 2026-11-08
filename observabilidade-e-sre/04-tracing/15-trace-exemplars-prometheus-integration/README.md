# Integração de Exemplares de Trace em Gráficos de Métrica do Prometheus

## 1. Cenário de Produção Real
Ao visualizar um pico isolado de 5 segundos em um gráfico de latência no Grafana, o operador não sabia qual requisição gerou o pico.

## 2. O Problema Real
Clicar diretamente no ponto exato do pico no gráfico de métricas e abrir imediatamente o trace que originou aquela lentidão.

## 3. Arquitetura e Engenharia da Solução
Configuração de Trace Exemplars no Prometheus e OpenTelemetry SDK associando `trace_id` a amostras de histogramas numéricos.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Prometheus Exemplars, OpenTelemetry SDK, Grafana Exemplar Integration, Instant Triage
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
curl -g 'http://prometheus:9090/api/v1/query_exemplars?query=http_request_duration_seconds_bucket[1h]'
```
