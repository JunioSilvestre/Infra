# Geração Automatizada de Regras de SLO e Alertas Multi-Burn-Rate com Sloth

## 1. Cenário de Produção Real
Engenheiros gastavam semanas escrevendo manualmente regras matemáticas complexas de PromQL para monitorar orçamentos de erro.

## 2. O Problema Real
Gerar automaticamente regras de gravação de SLIs e alertas de queima de erro (Multi-Window Multi-Burn-Rate) a partir de definições simples em YAML.

## 3. Arquitetura e Engenharia da Solução
Uso da ferramenta Sloth compilando definições de SLO de serviço em manifests de `PrometheusRule` compatíveis com o Google SRE Handbook.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Sloth SLO Generator, Multi-Burn-Rate Alerts, Google SRE Handbook, PromQL
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
sloth generate -i slo-definitions.yaml -o prometheus-rules.yaml
```
