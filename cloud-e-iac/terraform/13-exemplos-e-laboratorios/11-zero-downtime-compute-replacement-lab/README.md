# Laboratório de Substituição de Instâncias de Computação com Zero Downtime

## 1. Cenário de Produção Real
Atualizar a imagem base (AMI) de servidores web sem perder nenhuma requisição HTTP de usuários ativos.

## 2. O Problema Real
Dominar o ciclo de vida `create_before_destroy` e a integração com Target Groups de balanceadores de carga.

## 3. Arquitetura e Engenharia da Solução
Submissão de novo ID de AMI, acompanhamento do health check do balanceador e desativação graciosa das instâncias antigas.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Zero-Downtime Deployment, create_before_destroy, ALB Health Checks, Rolling Updates
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform apply -var='ami_id=ami-newversion' -auto-approve
```
