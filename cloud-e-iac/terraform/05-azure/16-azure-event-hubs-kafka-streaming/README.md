# Ingestão Massiva de Eventos com Azure Event Hubs e Compatibilidade Kafka

## 1. Cenário de Produção Real
Pipelines corporativos de dados precisam receber milhões de eventos de IoT e telemetria por segundo sem gerenciar servidores Kafka.

## 2. O Problema Real
Prover um serviço serverless totalmente gerenciado capaz de receber tráfego de clientes Kafka legados sem alterar o código da aplicação.

## 3. Arquitetura e Engenharia da Solução
Azure Event Hubs Namespace com endpoint Kafka ativado, particionamento elástico, Auto-Inflate e gravação contínua no Azure Data Lake (Capture).

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Azure Event Hubs, Apache Kafka API, Event Capture, Azure Data Lake Gen2
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
az eventhubs namespace show --name eh-corp-stream --resource-group rg-streaming
```
