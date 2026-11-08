# Painel de Confiabilidade e Telemetria em Tempo Real do Trânsito Urbano de NYC

## 1. Cenário de Produção Real
Agência municipal de trânsito monitorando a localização por GPS e velocidade de mais de 5.000 ônibus e trens da cidade de Nova York.

## 2. O Problema Real
Alertar imediatamente sobre falhas de transmissão de telemetria, perda de conectividade celular e lentidão em cruzamentos críticos.

## 3. Arquitetura e Engenharia da Solução
Ingestão massiva com EMQX Broker MQTT, processamento Apache Flink, VictoriaMetrics e mapas de calor de tráfego no Grafana Geomap.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** EMQX MQTT Broker, Apache Flink, VictoriaMetrics, Grafana Geomap, Smart Cities
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
curl -s http://localhost:8428/api/v1/query?query=transit_active_vehicles
```
