# Detecção e Bloqueio de Explosão de Cardinalidade com Prometheus Metric Relabeling

## 1. Cenário de Produção Real
Desenvolvedores incluíram acidentalmente o `user_id` e o `order_id` como labels de métricas, gerando 50 milhões de novas séries temporais e travando o TSDB.

## 2. O Problema Real
Detectar e descartar dinamicamente labels de alta cardinalidade no momento exato da raspagem (scrape) sem reiniciar o Prometheus.

## 3. Arquitetura e Engenharia da Solução
Configuração de regras de `metric_relabel_configs` com ação `labeldrop` e `regex` eliminando campos com valores de UUID ou timestamp.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Prometheus Metric Relabeling, Cardinality Defense, TSDB Protection
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
promtool check config prometheus.yaml
```
