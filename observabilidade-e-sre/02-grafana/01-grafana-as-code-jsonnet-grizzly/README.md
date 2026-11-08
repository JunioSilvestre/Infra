# Engenharia de Dashboards como Código com Jsonnet e Grafana Grizzly

## 1. Cenário de Produção Real
Fintech em NY operando 300 painéis criados manualmente no clique sofria com painéis despadronizados, métricas quebradas e zero versionamento.

## 2. O Problema Real
Versionar, revisar em Pull Requests e testar dashboards de visualização como código limpo e reutilizável no Git.

## 3. Arquitetura e Engenharia da Solução
Desenvolvimento de componentes com Jsonnet (grafonnet-lib) compilados e implantados no Grafana corporativo via CLI Grizzly (grr).

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Grafana as Code, Jsonnet, Grafonnet, Grafana Grizzly (grr), GitOps
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
grr apply dashboards/ && grr diff dashboards/
```
