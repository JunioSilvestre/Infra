# Otimização de Consultas Pesadas com Prometheus Recording Rules

## 1. Cenário de Produção Real
Dashboards executivos de SLIs calculavam agregações de 30 dias de milhões de séries temporais em tempo real, travando o servidor Prometheus.

## 2. O Problema Real
Reduzir o tempo de carga de painéis do Grafana de 40 segundos para menos de 200 milissegundos pré-computando agregações caras.

## 3. Arquitetura e Engenharia da Solução
Criação de `PrometheusRule` com regras de gravação gerando métricas derivadas (ex: `job:http_requests:rate5m`) avaliadas a cada 30 segundos.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Prometheus Recording Rules, PromQL Optimization, Prometheus Operator
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
promtool check rules recording_rules.yaml
```
