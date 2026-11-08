# Ciclo de Vida de Arquivamento S3 Glacier com Bloqueio de Conformidade SOX

## 1. Cenário de Produção Real
Legislação financeira de Nova York exige retenção obrigatória de relatórios contábeis por 7 anos com garantia de que ninguém consiga apagá-los.

## 2. O Problema Real
Reduzir os custos de storage movendo petabytes de dados para Glacier Flexible/Deep Archive mantendo auditoria estrita.

## 3. Arquitetura e Engenharia da Solução
Bucket S3 com transição automática após 90 dias para Glacier e aplicação de S3 Object Lock em modo Compliance com retenção legal (Legal Hold).

## 4. Ferramentas e Tecnologias
- **Ecossistema:** AWS S3 Glacier, S3 Object Lock, SOX Compliance, FinOps Data Archiving
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
aws s3api get-object-lock-configuration --bucket financial-records-ny
```
