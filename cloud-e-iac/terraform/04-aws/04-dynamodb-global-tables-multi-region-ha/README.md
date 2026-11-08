# Banco de Dados NoSQL Global com DynamoDB Global Tables e RPO Quase Zero

## 1. Cenário de Produção Real
Plataforma de autenticação global precisa garantir leituras e escritas rápidas em us-east-1 e us-west-2 com sincronização multimaster contínua.

## 2. O Problema Real
Garantir alta disponibilidade e sobrevivência de dados contra a indisponibilidade total de uma região inteira da AWS.

## 3. Arquitetura e Engenharia da Solução
Provisionamento de DynamoDB Global Table com réplicas geográficas, criptografia KMS gerenciada por réplica e recuperação pontual no tempo (PITR).

## 4. Ferramentas e Tecnologias
- **Ecossistema:** AWS DynamoDB Global Tables, Point-in-Time Recovery (PITR), Multi-Region AWS
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
aws dynamodb describe-table --table-name global-sessions
```
