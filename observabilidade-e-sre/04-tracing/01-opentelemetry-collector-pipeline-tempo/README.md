# Arquitetura de Rastreabilidade Distribuída com OTel Collector e Grafana Tempo

## 1. Cenário de Produção Real
Fintech em NY operando 80 microsserviços interconectados precisava entender onde estavam os 2 segundos de latência em transferências bancárias.

## 2. O Problema Real
Rastrear cada requisição ponta a ponta desde o gateway web até as queries de banco de dados sem depender de agentes proprietários caros.

## 3. Arquitetura e Engenharia da Solução
Deploy de agentes OpenTelemetry Collector recebendo dados via protocolo OTLP (gRPC/HTTP), processando em lotes e gravando no Grafana Tempo (S3).

## 4. Ferramentas e Tecnologias
- **Ecossistema:** OpenTelemetry (OTel) Collector, Grafana Tempo, OTLP Protocol, Distributed Tracing
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
otelcol --config=/etc/otelcol/config.yaml
```
