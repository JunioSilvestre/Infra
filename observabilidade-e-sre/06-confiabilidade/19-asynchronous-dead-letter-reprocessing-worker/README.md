# Worker Automatizado de Reprocessamento e Correção de Mensagens em DLQ

## 1. Cenário de Produção Real
Centenas de mensagens ficavam paradas em Dead Letter Queues exigindo scripts manuais arriscados para reenvio para a fila principal.

## 2. O Problema Real
Automatizar a auditoria de erros, correção de metadados e reenvio gradual (redrive) de mensagens da DLQ para o fluxo ativo.

## 3. Arquitetura e Engenharia da Solução
Aplicação em Python/Go com agendamento seguro, taxa controlada de reenvio para não saturar a fila e logs de auditoria de cada mensagem.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** DLQ Redrive Automation, Message Queue Healing, Event-Driven Architecture
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
python redrive_dlq.py --source-queue payment_dlq --target-queue payment_inbound --rate 10
```
