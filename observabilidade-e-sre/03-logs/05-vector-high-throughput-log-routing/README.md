# Roteamento e Transformação de Logs de Altíssima Vazão com Vector em Rust

## 1. Cenário de Produção Real
Processadores de log tradicionais baseados em Java ou Ruby consumiam núcleos inteiros de CPU apenas para fazer parse de JSON de logs.

## 2. O Problema Real
Substituir agregadores pesados pelo Vector (Datadog) compilado em Rust, processando mais de 100.000 eventos por segundo por nó.

## 3. Arquitetura e Engenharia da Solução
Deploy de instâncias do Vector atuando como agregador centralizado com buffers de disco e envio dividido para S3 (arquivo) e Loki (tempo real).

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Timber.io Vector, Rust-based Logging, High-Throughput Routing, Syslog RFC 5424
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
vector --config /etc/vector/vector.yaml
```
