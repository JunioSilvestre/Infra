# Isolamento e Quarentena de Mensagens Tóxicas (Poison Pills) em Filas

## 1. Cenário de Produção Real
Uma mensagem malformatada em uma fila de mensageria fazia o pod consumidor quebrar repetidamente, travando todo o lote de processamento.

## 2. O Problema Real
Identificar mensagens que falharam após 3 tentativas consecutivas e movê-las automaticamente para uma fila de quarentena (Dead Letter Queue).

## 3. Arquitetura e Engenharia da Solução
Configuração de políticas de Redrive no RabbitMQ/SQS associadas a alarmes que alertam a equipe sem interromper o restante da fila.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Poison Pill Isolation, Dead Letter Queue (DLQ), Message Consumer Resilience
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
aws sqs receive-message --queue-url <DLQ_URL> --max-number-of-messages 1
```
