# Dashboard de Monitoramento de Lag de Consumidores e Throughput em Apache Kafka

## 1. Cenário de Produção Real
Filas de processamento assíncrono acumulavam milhões de mensagens sem que os operadores percebessem o atraso no processamento.

## 2. O Problema Real
Monitorar o lag exato por Consumer Group, throughput em MB/s por partição e balanceamento de líderes de broker.

## 3. Arquitetura e Engenharia da Solução
Painel consumindo métricas do Kafka Exporter e Burrow com alarmes visuais destacados quando o lag ultrapassa 5.000 mensagens.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Apache Kafka Observability, Consumer Lag, Stream Processing Telemetry
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
curl -s http://grafana.corp/api/dashboards/uid/kafka-streaming
```
