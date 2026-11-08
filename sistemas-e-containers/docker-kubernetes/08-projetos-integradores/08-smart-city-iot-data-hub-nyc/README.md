# Hub de Ingestão de Sensores Urbanos e Trânsito de Nova York com EMQX e Flink

## 1. Cenário de Produção Real
Agência municipal de transporte precisa receber dados de semáforos inteligentes, câmeras e sensores ambientais de todos os distritos de NYC.

## 2. O Problema Real
Escalar conexões MQTT persistentes de centenas de milhares de dispositivos com processamento de stream contínuo em tempo real.

## 3. Arquitetura e Engenharia da Solução
Deploy de cluster EMQX (MQTT Broker) em Kubernetes com autoscaling, conectado ao Apache Flink para processamento em janela de tempo.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** EMQX Operator, Apache Flink, Kubernetes StatefulSets, Grafana Dashboards
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
kubectl get emqx,flinkdeployments -A
```
