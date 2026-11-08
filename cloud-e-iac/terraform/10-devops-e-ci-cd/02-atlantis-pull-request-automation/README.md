# Automação de Terraform com Atlantis e Aprovação Declarativa em Comentários

## 1. Cenário de Produção Real
Engenheiros precisavam de permissões administrativas amplas na AWS para rodar `terraform apply` de suas máquinas locais.

## 2. O Problema Real
Centralizar toda a execução em um servidor seguro onde o `apply` só pode ser executado através de comentários em Pull Requests aprovados.

## 3. Arquitetura e Engenharia da Solução
Deploy do Atlantis em cluster Kubernetes com webhooks do GitHub, controle de locks por diretório e regras rígidas de aprovação de pares.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Atlantis, GitOps Pull Request Automation, Kubernetes, Role-Based Access Control
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
atlantis apply -d environments/prod
```
