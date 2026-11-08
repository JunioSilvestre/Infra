# Geração Automática do Mapa de Dependências de Serviços a Partir de Spans

## 1. Cenário de Produção Real
Arquitetos de sistemas não possuíam visibilidade real de quais microsserviços se comunicavam entre si no ambiente de produção.

## 2. O Problema Real
Gerar um grafo dinâmico e atualizado em tempo real mostrando chamadas entre serviços, taxas de erro e volume de tráfego.

## 3. Arquitetura e Engenharia da Solução
Processamento contínuo de spans pelo Jaeger Flink/Spark jobs ou Grafana Tempo Service Graph gerando métricas de conectividade.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Service Graph, Architectural Mapping, OpenTelemetry Topology, Tempo Graphs
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
curl -s http://tempo:3200/api/metrics/service-graph
```
