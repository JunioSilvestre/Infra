# Fila de Amortecimento de Logs com Apache Kafka contra Picos de Tráfego

## 1. Cenário de Produção Real
Durante incidentes graves, o volume de logs de erro aumentava 1.000 vezes, derrubando o banco de indexação de logs por sobrecarga.

## 2. O Problema Real
Desacoplar a ingestão da indexação utilizando o Kafka como buffer persistente capaz de absorver dias de tráfego sem perda de eventos.

## 3. Arquitetura e Engenharia da Solução
Agentes Fluent Bit enviando logs diretamente para tópicos Kafka particionados, consumidos de forma controlada pelo Logstash/Vector.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Apache Kafka Buffer, Fluent Bit Kafka Output, Log Ingestion Resilience
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
kafka-console-consumer.sh --bootstrap-server kafka:9092 --topic k8s-logs --max-messages 5
```
