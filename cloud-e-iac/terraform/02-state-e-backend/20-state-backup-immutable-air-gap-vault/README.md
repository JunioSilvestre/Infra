# Cópia Imutável de Estados de Produção para Cofre Isolado (WORM Storage)

## 1. Cenário de Produção Real
Exigência regulatória de seguro cibernético contra ataques de Ransomware que tentem apagar ou criptografar a infraestrutura em nuvem.

## 2. O Problema Real
Garantir que cópias diárias dos estados sejam enviadas para uma conta de nuvem totalmente isolada (Air-Gapped) com política de retenção WORM.

## 3. Arquitetura e Engenharia da Solução
Pipeline disparando exportação de estado via `terraform state pull`, assinatura criptográfica e upload para bucket com AWS S3 Object Lock Compliance Mode.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** AWS S3 Object Lock WORM, Air-Gapped Vault, Ransomware Resilience, Cyber Insurance
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
aws s3api put-object-retention --bucket immutable-state-vault --key prod-backup.tfstate --retention 'Mode=COMPLIANCE,RetainUntilDate=2028-01-01'
```
