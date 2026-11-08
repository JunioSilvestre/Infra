# Gestão Centralizada de Cópias de Segurança com AWS Backup e Vault Lock

## 1. Cenário de Produção Real
Cada equipe gerenciava seus próprios snapshots de EBS e RDS manualmente, sem padronização de retenção e com risco de deleção acidental.

## 2. O Problema Real
Centralizar as políticas de backup de todos os serviços da organização em um cofre imutável contra ataques de ransomware.

## 3. Arquitetura e Engenharia da Solução
Plano de backup unificado no AWS Backup cobrindo EBS, RDS, EFS e DynamoDB com AWS Backup Vault Lock ativado em modo Compliance.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** AWS Backup, Vault Lock, Ransomware Protection, Compliance Policies
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
aws backup describe-backup-vault --backup-vault-name immutable-vault
```
