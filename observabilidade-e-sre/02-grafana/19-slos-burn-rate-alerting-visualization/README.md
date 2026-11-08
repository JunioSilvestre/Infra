# Visualização Dinâmica de Velocidade de Queima de Orçamento de Erro (Burn Rate)

## 1. Cenário de Produção Real
Engenheiros de SRE precisavam de um painel visual para entender a severidade de um alerta: o orçamento vai acabar em 1 hora ou em 3 dias?

## 2. O Problema Real
Exibir a velocidade matemática de consumo de orçamentos de erro em gráficos de linha claros com limites de escalonamento.

## 3. Arquitetura e Engenharia da Solução
Painel com gráficos multi-janela (1h/5m vs 6h/30m) correlacionando as queimas rápidas (críticas) e lentas (avisos).

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Multi-Window Multi-Burn-Rate, SRE Math, Error Budget Management, Grafana
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
curl -s http://grafana.corp/api/dashboards/uid/burn-rate-analysis
```
