# Substituição de TSDB por VictoriaMetrics para Ambientes de Alta Rotatividade

## 1. Cenário de Produção Real
Ambientes com centenas de deploys de microsserviços por dia geravam alta cardinalidade (churn de pods) estourando a tabela de símbolos do Prometheus.

## 2. O Problema Real
Sustentar milhões de métricas ativas com menor consumo de CPU e RAM e compressão de dados 7 vezes mais eficiente.

## 3. Arquitetura e Engenharia da Solução
Deploy do VictoriaMetrics Cluster (vmstorage, vminsert, vmselect) recebendo streams de métricas via `remote_write` com alta disponibilidade.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** VictoriaMetrics, Remote Write, High-Churn TSDB, Prometheus Alternative
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
curl http://victoriametrics:8428/metrics
```
