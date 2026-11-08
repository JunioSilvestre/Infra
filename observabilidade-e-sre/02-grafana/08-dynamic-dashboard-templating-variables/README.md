# Arquitetura de Dashboards com Variáveis Dinâmicas em Cascata e Regex

## 1. Cenário de Produção Real
Engenheiros mantinham 40 painéis quase idênticos para monitorar diferentes regiões e clusters em nuvem.

## 2. O Problema Real
Consolidar dezenas de painéis em um único dashboard universal com dropdowns dependentes (`Região -> Cluster -> Namespace -> Pod`).

## 3. Arquitetura e Engenharia da Solução
Configuração de variáveis de query avançadas no Grafana com expressões regulares (`label_values()`) e atualização dinâmica de painéis.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Grafana Templating, Chained Variables, Query Optimization, Dynamic Dashboards
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
curl -s http://grafana.corp/api/dashboards/uid/universal-cluster
```
