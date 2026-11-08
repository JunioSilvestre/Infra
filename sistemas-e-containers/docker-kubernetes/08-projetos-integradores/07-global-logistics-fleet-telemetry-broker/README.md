# Broker de Telemetria de Frotas de Transporte Marítimo e Terrestre em Tempo Real

## 1. Cenário de Produção Real
Operador de logística do Porto de NY/NJ processando milhões de eventos de GPS, temperatura e status de containers por minuto.

## 2. O Problema Real
Processar fluxos contínuos de mensagens sem gargalos de I/O de disco e com autoescalonamento elástico de pods de ingestão.

## 3. Arquitetura e Engenharia da Solução
Stack com Strimzi (Apache Kafka Operator no Kubernetes), réplicas distribuídas em 3 zonas, MirrorMaker para replicação e monitoramento OpenTelemetry.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Strimzi Kafka Operator, Apache Kafka, OpenTelemetry, Prometheus, AWS EBS CSI
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
kubectl get kafkas,kafkatopics -n streaming
```
