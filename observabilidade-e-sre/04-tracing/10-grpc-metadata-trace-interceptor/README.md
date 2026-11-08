# Instrumentação de Microsserviços gRPC de Alta Performance com Interceptores OTel

## 1. Cenário de Produção Real
Sistemas de mensageria de alta velocidade em Go e Java utilizavam gRPC e não propagavam metadados de rastreamento entre serviços.

## 2. O Problema Real
Garantir rastreabilidade transparente de chamadas gRPC unárias e de streaming com registro de códigos de status de erro gRPC.

## 3. Arquitetura e Engenharia da Solução
Implementação de interceptores de cliente e servidor gRPC (`UnaryServerInterceptor`, `StreamServerInterceptor`) vinculados ao tracer OTel.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** gRPC Interceptors, OpenTelemetry gRPC Tracing, High-Throughput Microservices
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
grpcurl -plaintext -H 'traceparent: ...' localhost:50051 api.v1.OrderService/GetOrder
```
