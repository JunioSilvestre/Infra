# Federação Global de Métricas com Thanos Sidecar e Armazenamento em S3

## 1. Cenário de Produção Real
Fintech em Manhattan com múltiplos clusters EKS (US-East e EU) precisa de uma visão global unificada de métricas sem sobrecarregar a memória do Prometheus local.

## 2. O Problema Real
Prometheus locais sofriam com OOM-Kills quando consultas buscavam dados históricos de mais de 15 dias.

## 3. Arquitetura e Engenharia da Solução
Arquitetura Thanos com Sidecar nos clusters locais, Store Gateway conectado a bucket S3 corporativo, Compactor para downsampling e Thanos Query unificado.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Thanos, Prometheus, AWS S3, TSDB Storage, Thanos Query Frontend
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
thanos query --http-address=0.0.0.0:10902 --store=thanos-store.internal:10901
```
