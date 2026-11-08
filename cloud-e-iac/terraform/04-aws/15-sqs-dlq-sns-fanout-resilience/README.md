# Padrão Fan-Out de Mensageria com Amazon SNS, SQS e Dead Letter Queues (DLQ)

## 1. Cenário de Produção Real
Falhas de processamento em serviços downstream de envio de e-mails derrubavam todo o pipeline de processamento de compras de e-commerce.

## 2. O Problema Real
Garantir desacoplamento assíncrono, garantia de entrega de mensagens e retenção de erros em filas de cartas mortas (DLQ) para reprocessamento.

## 3. Arquitetura e Engenharia da Solução
Tópico SNS distribuindo mensagens para múltiplas filas SQS (Fan-Out) com redrive policy, retentativa com backoff e alarmes CloudWatch.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Amazon SNS, Amazon SQS, Dead Letter Queue (DLQ), Event-Driven Architecture
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
aws sqs get-queue-attributes --queue-url <QUEUE_URL> --attribute-names All
```
