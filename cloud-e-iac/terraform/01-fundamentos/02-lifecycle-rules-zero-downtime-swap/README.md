# Substituição Atômica de Recursos sem Queda de Tráfego com create_before_destroy

## 1. Cenário de Produção Real
Atualizações de Launch Templates e instâncias de banco causavam minutos de indisponibilidade porque o Terraform destruía o recurso antigo antes de criar o novo.

## 2. O Problema Real
Garantir continuidade ininterrupta de serviço forçando o provisionamento e validação de saúde do novo recurso antes da deleção do anterior.

## 3. Arquitetura e Engenharia da Solução
Configuração do bloco `lifecycle { create_before_destroy = true }` associado a target groups de balanceador e health checks ativos.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Terraform Lifecycle, AWS Autoscaling Groups, Target Group Health Checks
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform apply -auto-approve -replace='aws_instance.bastion'
```
