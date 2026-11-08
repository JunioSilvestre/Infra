# Observabilidade de Malha de Dados e Logística Portuária no Porto de NY/NJ

## 1. Cenário de Produção Real
Operador portuário processando telemetria em tempo real de guindastes, navios e rastreadores de containers marítimos.

## 2. O Problema Real
Detectar gargalos de processamento de filas e falhas de comunicação com sensores de campo antes que causem filas de caminhões.

## 3. Arquitetura e Engenharia da Solução
Stack de streaming com Apache Kafka, Prometheus JMX Exporter, OpenTelemetry Tracing e dashboards de vazão operacional no Grafana.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Apache Kafka, JMX Exporter, OpenTelemetry, Grafana Dashboards, Logistics IoT
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
curl -s http://localhost:5556/metrics | grep kafka_server_BrokerTopicMetrics
```
