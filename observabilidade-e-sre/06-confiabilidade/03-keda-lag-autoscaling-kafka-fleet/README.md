# Autoescalonamento Elástico Baseado no Lag de Filas Apache Kafka com KEDA

## 1. Cenário de Produção Real
Consumidores de mensagens não escalavam com rapidez suficiente durante campanhas promocionais, gerando atrasos de horas nas entregas.

## 2. O Problema Real
Escalar frotas de processamento de 5 para 120 pods em menos de 20 segundos assim que o lag de mensagens da fila começar a subir.

## 3. Arquitetura e Engenharia da Solução
Deploy do KEDA configurado com ScaledObject observando o offset de grupos de consumidores do Kafka e escalonamento reativo de réplicas.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** KEDA, Kubernetes Horizontal Pod Autoscaler, Apache Kafka Consumer Lag
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
kubectl get scaledobject kafka-consumer-scaler -w
```
