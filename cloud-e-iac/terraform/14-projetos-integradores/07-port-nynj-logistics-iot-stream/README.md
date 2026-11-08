# Hub de Ingestão de Telemetria de Cargas em Tempo Real para o Porto de NY/NJ

## 1. Cenário de Produção Real
Operador portuário processando eventos contínuos de sensores de temperatura, GPS e pesagem de containers marítimos.

## 2. O Problema Real
Processar milhões de eventos de telemetria por minuto sem gargalos de banco e com persistência de dados em data lake analítico.

## 3. Arquitetura e Engenharia da Solução
Arquitetura de mensageria com cluster AWS MSK (Kafka), processamento serverless com Lambda, banco DynamoDB e armazenamento Parquet em S3.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Terraform, AWS MSK (Apache Kafka), AWS Lambda, Amazon DynamoDB, AWS Glue
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform apply -target=module.port_logistics_hub
```
