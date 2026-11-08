# Engenharia de Confiabilidade para Grande Varejista do Tri-State (NY, NJ, CT)

## 1. Cenário de Produção Real
Plataforma de e-commerce atendendo milhões de clientes com picos massivos de 500.000 requisições por segundo durante a Black Friday.

## 2. O Problema Real
Garantir autoescalonamento antecipado (pre-warming), isolamento de falhas por Bulkhead e degradação graciosa em caso de saturação de estoque.

## 3. Arquitetura e Engenharia da Solução
Stack com KEDA escalando pods por lag de filas Kafka, Redis Sentinel para cache de catálogo, Grafana alertas de burn rate e rate limiting na borda.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** KEDA, Apache Kafka, Redis Sentinel, CloudFront, Grafana Alerting, FinOps
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
kubectl get scaledobject -A
```
