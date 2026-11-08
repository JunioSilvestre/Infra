# Simulação de Esgotamento de Memória (OOM-Kill) no Prometheus e Recuperação

## 1. Cenário de Produção Real
Treinar operadores para agir rapidamente quando o servidor central de monitoramento sofre crash contínuo por estouro de memória RAM.

## 2. O Problema Real
Identificar a consulta PromQL ou label de alta cardinalidade causador do estouro e recuperar a estabilidade do TSDB sem perder histórico.

## 3. Arquitetura e Engenharia da Solução
Script injetando milhões de métricas sintéticas com labels aleatórios, análise de dump de memória do Prometheus e aplicação de relabeling emergencial.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Prometheus OOM-Kill Recovery, TSDB Triage, Cardinality Troubleshooting
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
promtool tsdb analyze /var/lib/prometheus/data
```
