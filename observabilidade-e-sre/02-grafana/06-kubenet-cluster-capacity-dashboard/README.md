# Dashboard de Planejamento de Capacidade e Sobrealocação de Clusters Kubernetes

## 1. Cenário de Produção Real
Clusters Kubernetes apresentavam nós quase sem uso de memória física, enquanto desenvolvedores reclamavam que não conseguiam subir novos pods.

## 2. O Problema Real
Exibir claramente o abismo entre o que os pods requisitam (Requests) e o que eles realmente consomem (Usage) para guiar o dimensionamento.

## 3. Arquitetura e Engenharia da Solução
Painel detalhado calculando taxas de sobrealocação (Overcommit Ratio) de CPU e Memória por NodePool e namespaces.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Kubernetes Capacity Planning, Resource Overcommit, Requests vs Limits, Grafana
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
curl -s http://grafana.corp/api/dashboards/uid/k8s-capacity
```
