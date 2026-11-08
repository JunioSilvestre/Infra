# Replicação Geográfica Ativa de Estado entre Regiões AWS para Disaster Recovery

## 1. Cenário de Produção Real
Se a região us-east-1 sofrer indisponibilidade total, a equipe de SRE precisa conseguir operar e aplicar infraestrutura na região us-east-2 imediatamente.

## 2. O Problema Real
Garantir que cada alteração gravada no bucket de estado primário seja replicada criptografada em menos de 10 segundos para a região de backup.

## 3. Arquitetura e Engenharia da Solução
Configuração de AWS S3 Cross-Region Replication (CRR) com KMS Re-encryption e monitoramento de métricas de replicação CloudWatch.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** AWS S3 Cross-Region Replication, Disaster Recovery, RPO Zero Architecture
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
aws s3api get-bucket-replication --bucket tf-state-primary-ny
```
