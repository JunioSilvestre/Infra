# Estratégia de Desacoplamento e Migração do Datadog APM para OpenTelemetry

## 1. Cenário de Produção Real
Custos exorbitantes com faturamento proprietário de APM motivaram a empresa a migrar para o padrão aberto sem quebrar o monitoramento existente.

## 2. O Problema Real
Garantir coexistência temporária permitindo que spans OpenTelemetry sejam encaminhados simultaneamente para o Datadog e para o Tempo.

## 3. Arquitetura e Engenharia da Solução
Configuração do exportador `datadog` dentro do OpenTelemetry Collector, realizando a tradução de atributos sem intervenção nas aplicações.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Datadog Exporter, OTel Vendor Independence, APM Migration, Cloud FinOps
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
otelcol --config=dual-export-config.yaml
```
