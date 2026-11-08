# Ambiente de Homologação com Replicação de Dados Mascarados e Anonimizados

## 1. Cenário de Produção Real
Testes em staging falhavam em reproduzir cenários da vida real porque os dados sintéticos de teste eram simplórios demais.

## 2. O Problema Real
Clonar a base de dados de produção para o ambiente de staging aplicando rotinas de anonimização estritas (LGPD/GDPR) na transposição.

## 3. Arquitetura e Engenharia da Solução
Pipeline Terraform + Bash orquestrando snapshot de RDS, restauração temporária, execução de scripts de sanitização e deploy no staging.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Data Masking, LGPD/GDPR Compliance, Staging Parity, RDS Snapshots
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform apply -target=module.staging_database_sanitized
```
