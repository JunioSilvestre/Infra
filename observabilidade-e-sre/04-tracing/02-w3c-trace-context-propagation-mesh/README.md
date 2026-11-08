# Propagação Padronizada de Contexto de Rastreamento com Cabeçalhos W3C

## 1. Cenário de Produção Real
Traces distribuídos eram quebrados quando uma requisição passava por mensageria assíncrona (Kafka/RabbitMQ) ou proxies intermediários.

## 2. O Problema Real
Garantir continuidade do `traceparent` e `tracestate` através de todos os protocolos síncronos e assíncronos da corporação.

## 3. Arquitetura e Engenharia da Solução
Implementação de interceptores HTTP e serializadores de mensageria injetando e extraindo cabeçalhos segundo a norma W3C Trace Context.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** W3C Trace Context Specification, Context Propagation, Microservices Tracing
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
curl -H 'traceparent: 00-4bf92f3577b34da6a3ce929d0e0e4736-00f067aa0ba902b7-01' http://api.corp.internal/pay
```
