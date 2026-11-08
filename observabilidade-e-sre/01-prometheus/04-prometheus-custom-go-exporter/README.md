# Desenvolvimento de Exportador Prometheus Customizado em Go para Serviços Legados

## 1. Cenário de Produção Real
Sistemas de mensageria proprietários bancários em Connecticut não possuíam endpoints HTTP de métricas nem suporte a OpenTelemetry.

## 2. O Problema Real
Coletar métricas internas de conexões TCP e tamanho de filas a cada 5 segundos e expô-las no formato padronizado Prometheus.

## 3. Arquitetura e Engenharia da Solução
Aplicação compilada em Go utilizando o SDK oficial `prometheus/client_golang` registrando Counters, Gauges e Histograms com labels controlados.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Go (Golang), prometheus/client_golang, Custom Metrics, Linux Sockets
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
curl -s http://localhost:9100/metrics | grep financial_tx_latency_seconds
```
