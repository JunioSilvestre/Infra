# Diagnóstico e Eliminação de Estrangulamento de CPU (CPU Throttling) em Pods

## 1. Cenário de Produção Real
Aplicações executando tarefas rápidas sofriam picos misteriosos de latência mesmo com o consumo médio de CPU abaixo de 50%.

## 2. O Problema Real
Identificar o estrangulamento de CPU imposto pela cota do CFS (Completely Fair Scheduler) e redimensionar limites adequadamente.

## 3. Arquitetura e Engenharia da Solução
Monitoramento de métricas `container_cpu_cfs_throttled_periods_total` no Prometheus e ajuste fino de limites de CPU no manifest.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Linux CFS Quotas, CPU Throttling, Kubernetes Limits Optimization, PromQL
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
promtool query instant http://localhost:9090 'rate(container_cpu_cfs_throttled_periods_total[5m])'
```
