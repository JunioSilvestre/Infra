# Observabilidade Híbrida Unificada entre Datacenter Físico e Nuvens Múltiplas

## 1. Cenário de Produção Real
Instituição financeira tradicional em Connecticut operando 300 servidores físicos locais e centenas de microsserviços na AWS.

## 2. O Problema Real
Consolidar a visualização de métricas, logs e traces de ambientes físicos e de nuvem em uma única malha de observabilidade sem silos.

## 3. Arquitetura e Engenharia da Solução
Agentes OpenTelemetry Collector e Grafana Agents rodando em servidores Linux bare-metal e clusters EKS reportando ao mesmo cluster central.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Hybrid Cloud Observability, OpenTelemetry Collector, Prometheus Federation, Grafana
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
curl -s http://central-collector.internal:8888/metrics
```
