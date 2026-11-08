# Amostragem Baseada na Cauda (Tail-Based Sampling) para Redução de Custos

## 1. Cenário de Produção Real
Gravar 100% dos traces de bilhões de requisições bem-sucedidas gerava custos gigantescos de armazenamento desnecessário.

## 2. O Problema Real
Armazenar apenas traces que apresentaram erro (HTTP 5xx) ou cuja latência ultrapassou o percentil p95 (maior que 500ms).

## 3. Arquitetura e Engenharia da Solução
Configuração do processador `tail_sampling` no OpenTelemetry Collector mantendo traces temporariamente em memória até a conclusão da transação.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Tail-Based Sampling, OpenTelemetry Processor, APM FinOps, Storage Optimization
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
otelcol-contrib --config=/etc/otelcol-contrib/config.yaml
```
