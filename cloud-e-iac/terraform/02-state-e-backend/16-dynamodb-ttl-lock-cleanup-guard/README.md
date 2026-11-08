# Automação de Limpeza de Registros Órfãos na Tabela de Lock do DynamoDB

## 1. Cenário de Produção Real
Acúmulo de registros antigos ou corrompidos na tabela de controle de concorrência gerava confusão e lentidão operacional.

## 2. O Problema Real
Garantir que itens de locks finalizados sejam limpos mantendo a tabela DynamoDB operando com alta performance e baixo custo.

## 3. Arquitetura e Engenharia da Solução
Habilitação de DynamoDB Time-To-Live (TTL) em colunas de expiração e script SRE de verificação periódica de saúde de tabela.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** DynamoDB TTL, AWS CLI, Database Hygiene, Operational Automation
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
aws dynamodb describe-time-to-live --table-name tf-locks-prod
```
