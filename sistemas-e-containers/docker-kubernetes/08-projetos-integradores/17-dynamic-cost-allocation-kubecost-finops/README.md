# Governança de Custos e Alocação de Gastos Multi-Tenant com Kubecost em NY

## 1. Cenário de Produção Real
Diretoria financeira de seguradora em NY não conseguia identificar qual departamento ou aplicação estava gastando 80% da fatura da nuvem.

## 2. O Problema Real
Dividir os custos reais da fatura da AWS/Azure com precisão cirúrgica por namespace, squad, produto e tipo de recurso (CPU/Memória/Storage).

## 3. Arquitetura e Engenharia da Solução
Deploy do Kubecost integrado à API de faturamento da AWS (Cost and Usage Report), com relatórios diários de desperdício e cotas ativas.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Kubecost, AWS CUR, Cloud FinOps, Prometheus Metrics, Grafana Dashboards
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
kubectl port-forward -n kubecost svc/kubecost-cost-analyzer 9090:9090
```
