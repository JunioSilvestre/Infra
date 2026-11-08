# Plataforma de Malha de Dados Orientada a Eventos com Padrão CQRS na Nuvem

## 1. Cenário de Produção Real
Aplicações financeiras de alta vazão com separação estrita entre operações transacionais de escrita e consultas rápidas de extratos.

## 2. O Problema Real
Evitar gargalos de concorrência desacoplando a escrita da leitura através de Change Data Capture e replicação em tempo real.

## 3. Arquitetura e Engenharia da Solução
Stack provisionando banco transacional PostgreSQL, stream de eventos com AWS MSK, Debezium CDC e cluster Elasticsearch para consultas rápidas.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Terraform, AWS MSK, Debezium, Amazon OpenSearch, Amazon RDS PostgreSQL
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform apply -target=module.event_driven_cqrs_mesh
```
