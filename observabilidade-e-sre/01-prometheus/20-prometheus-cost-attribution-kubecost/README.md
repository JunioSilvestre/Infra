# Atribuição de Custos de Computação Baseada em Métricas do Prometheus e Kubecost

## 1. Cenário de Produção Real
Fintech precisava saber exatamente quantos dólares em CPU e memória cada endpoint e squad consome mensalmente no cluster.

## 2. O Problema Real
Transformar métricas técnicas de consumo em valores monetários reais de fatura para subsidiar decisões financeiras de engenharia.

## 3. Arquitetura e Engenharia da Solução
Integração de métricas de nós e pods via Prometheus raspadas pelo Kubecost engine correlacionando com a tabela de preços da AWS.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Prometheus, Kubecost, Cloud FinOps, Resource Cost Attribution
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
curl http://kubecost-cost-analyzer:9090/model/allocation
```
