# Remoção Cirúrgica de Recursos do Estado sem Destruição Física na Nuvem

## 1. Cenário de Produção Real
Necessidade de transferir a gestão de uma VPC corporativa do repositório da equipe de desenvolvimento para o repositório central de redes.

## 2. O Problema Real
Remover o recurso do estado do projeto sem que o Terraform execute a deleção do recurso real na AWS durante o próximo deploy.

## 3. Arquitetura e Engenharia da Solução
Execução controlada de `terraform state rm aws_vpc.main`, verificação de integridade do estado e adoção no novo repositório.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** terraform state rm, Architectural Boundary Decoupling, SRE Operations
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform state rm module.network.aws_vpc.legacy_vpc
```
