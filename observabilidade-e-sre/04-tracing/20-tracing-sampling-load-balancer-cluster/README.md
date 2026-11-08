# Cluster de Coletores de Tracing com Balanceamento Inteligente por TraceID

## 1. Cenário de Produção Real
Múltiplas instâncias do OpenTelemetry Collector perdiam a capacidade de aplicar tail-sampling porque partes do mesmo trace iam para coletores diferentes.

## 2. O Problema Real
Garantir que todos os spans com o mesmo `trace_id` cheguem obrigatoriamente à mesma instância de coletor para decisão de amostragem.

## 3. Arquitetura e Engenharia da Solução
Deploy de camada Load-Balancing OTel Collector utilizando algoritmo de hashing consistente baseado no `trace_id` de entrada.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** OpenTelemetry Load-Balancing Exporter, Consistent Hashing, Scalable Tracing
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
otelcol --config=load-balancer-collector.yaml
```
