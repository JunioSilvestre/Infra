# Streaming de Logs do AWS CloudWatch para OpenSearch com Lambda e Kinesis

## 1. Cenário de Produção Real
Serviços gerenciados da AWS (Lambda, API Gateway, RDS) gravavam logs no CloudWatch, criando um silo isolado de dados.

## 2. O Problema Real
Centralizar os logs da nuvem no mesmo motor analítico utilizado para os microsserviços do Kubernetes em tempo real.

## 3. Arquitetura e Engenharia da Solução
Configuração de CloudWatch Subscription Filters com destinos Kinesis Data Firehose processando e entregando logs no OpenSearch.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** AWS CloudWatch Logs, Subscription Filters, Kinesis Data Firehose, OpenSearch
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
aws logs describe-subscription-filters --log-group-name /aws/lambda/payment-api
```
