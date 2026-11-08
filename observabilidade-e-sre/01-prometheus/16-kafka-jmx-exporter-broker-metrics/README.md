# Extração de Métricas Internas da JVM e Brokers Apache Kafka com JMX Exporter

## 1. Cenário de Produção Real
Brokers de Kafka sofriam com lentidão de replicação e estouro de memória sem visibilidade das métricas internas da Máquina Virtual Java.

## 2. O Problema Real
Coletar métricas de UnderReplicatedPartitions, JVM Garbage Collection e bytes de entrada/saída por tópico com baixa sobrecarga.

## 3. Arquitetura e Engenharia da Solução
Injeção do agente Java `jmx_prometheus_javaagent` nos scripts de inicialização do Kafka com regras de mapeamento de MBeans em YAML.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** JMX Exporter, Apache Kafka, Java Virtual Machine (JVM), Garbage Collection Metrics
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
curl -s http://localhost:5556/metrics | grep UnderReplicatedPartitions
```
