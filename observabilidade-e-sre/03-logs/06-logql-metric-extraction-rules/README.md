# Transformação de Logs em Métricas Numéricas com LogQL no Grafana Loki

## 1. Cenário de Produção Real
Aplicações legadas de terceiros não tinham endpoints de métricas Prometheus, mas geravam linhas de log contendo tempos de execução.

## 2. O Problema Real
Extrair métricas numéricas em tempo real diretamente do fluxo de texto dos logs sem alterar uma única linha de código legado.

## 3. Arquitetura e Engenharia da Solução
Criação de consultas LogQL com operadores de métrica (`rate()`, `quantile_over_time()`, `unwrap`) gerando alertas de latência no Prometheus.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** LogQL, Metric Extraction from Logs, Log-to-Metric Parsing, SRE Observability
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
logcli instant-query 'quantile_over_time(0.99, {app="legacy"} | unwrap duration [5m])'
```
