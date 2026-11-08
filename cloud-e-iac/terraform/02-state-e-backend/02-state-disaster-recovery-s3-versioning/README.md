# Recuperação de Desastre e Rollback de Estado Corrompido a Partir de Versões S3

## 1. Cenário de Produção Real
Um erro grave durante um `terraform state rm` apagou 50 recursos críticos do arquivo de estado em produção.

## 2. O Problema Real
Restaurar com precisão o estado imediatamente anterior sem perder os recursos provisionados fisicamente na nuvem.

## 3. Arquitetura e Engenharia da Solução
Auditoria de versões de objeto no S3, download da versão anterior saudável e restauração atômica via `terraform state push` forçado.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** AWS S3 Object Versioning, terraform state push -force, SRE Disaster Recovery
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
aws s3api list-object-versions --bucket tf-state-corp --prefix prod/terraform.tfstate
```
