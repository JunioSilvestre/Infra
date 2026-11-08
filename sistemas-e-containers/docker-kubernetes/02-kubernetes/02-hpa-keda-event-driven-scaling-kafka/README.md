# Autoescalonamento Baseado em Eventos com KEDA e Apache Kafka em Boston

## 1. Cenário de Produção Real
Plataforma de e-commerce e logística em Massachusetts precisando escalar pods consumidores instantaneamente quando ocorrem picos de pedidos.

## 2. O Problema Real
O HPA padrão baseado em CPU/Memória é reativo e demora minutos para responder a uma fila com milhões de mensagens pendentes.

## 3. Arquitetura e Engenharia da Solução
Instalação do KEDA com ScaledObject monitorando o lag de partições no broker Kafka, escalando workers de 0 a 100 réplicas em segundos.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** KEDA (Kubernetes Event-driven Autoscaling), Apache Kafka, HPA, Prometheus
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
kubectl apply -f keda-kafka-scaler.yaml && kubectl get scaledobject -w
```
