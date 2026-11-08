# Rastreamento de Processamento Assíncrono Orientado a Eventos com Apache Kafka

## 1. Cenário de Produção Real
Mensagens postadas no Kafka perdiam o contexto de rastreamento quando lidas por consumidores assíncronos minutos depois.

## 2. O Problema Real
Correlacionar o fluxo completo: o cliente enviou a ordem -> gravou no Kafka -> consumidor processou -> salvou no banco.

## 3. Arquitetura e Engenharia da Solução
Injeção do contexto de tracing nos cabeçalhos binários da mensagem Kafka (`RecordHeaders`) e extração pelo consumer via OTel SDK.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Kafka Record Headers, Asynchronous Tracing, Event-Driven Observability
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic orders --property print.headers=true
```
