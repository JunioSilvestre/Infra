# Painel Padronizado dos Quatro Sinais Dourados (Four Golden Signals)

## 1. Cenário de Produção Real
Cada squad criava painéis com visualizações diferentes, atrasando o diagnóstico de incidentes graves pelo time central de SRE.

## 2. O Problema Real
Padronizar a observabilidade de todos os 150 microsserviços da empresa em torno dos Quatro Sinais Dourados do Google: Latência, Tráfego, Erros e Saturação.

## 3. Arquitetura e Engenharia da Solução
Template reutilizável no Grafana com variáveis dinâmicas de `$service` e `$namespace` calculando percentis p50, p95 e p99.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Four Golden Signals, Google SRE Handbook, PromQL Percentiles, Microservices
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
curl -s http://grafana.corp/api/dashboards/uid/golden-signals
```
