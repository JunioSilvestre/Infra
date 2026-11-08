# Módulo de Cluster Apache Kafka Gerenciado (AWS MSK) com mTLS e SASL/SCRAM

## 1. Cenário de Produção Real
Clusters de processamento de telemetria e mensageria financeira demandavam provisionamento complexo de brokers em 3 zonas com monitoramento.

## 2. O Problema Real
Garantir provisionamento padronizado de clusters Kafka com autenticação estrita, criptografia em trânsito e em repouso.

## 3. Arquitetura e Engenharia da Solução
Módulo encapsulando AWS MSK Cluster, SCRAM Secret Association, nós distribuídos em subnets privadas e exportação de métricas Prometheus JMX.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** AWS MSK (Managed Streaming for Kafka), TLS Encryption, SASL/SCRAM, Prometheus
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform plan -target=module.event_stream_kafka
```
