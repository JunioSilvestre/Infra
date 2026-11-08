# Gerenciamento de Autoscaling Externo e Ajustes de Pods com ignore_changes

## 1. Cenário de Produção Real
Sistemas de escalonamento automático (KEDA/AWS Auto Scaling) ajustavam dinamicamente a contagem de nós, mas o Terraform tentava reverter o número ao estado estático a cada execução.

## 2. O Problema Real
Permitir que agentes externos manipulem atributos específicos sem que o Terraform detecte como derivação de configuração (configuration drift).

## 3. Arquitetura e Engenharia da Solução
Configuração de `lifecycle { ignore_changes = [desired_capacity, tags["karpenter.sh/managed"]] }` em pools de computação.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Terraform Drift Management, AWS ASG, Karpenter, Tag Governance
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform plan -detailed-exitcode
```
