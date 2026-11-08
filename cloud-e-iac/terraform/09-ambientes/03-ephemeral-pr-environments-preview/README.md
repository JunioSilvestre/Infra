# Provisionamento Automatizado de Ambientes Efêmeros para Pull Requests

## 1. Cenário de Produção Real
Equipes de QA ficavam bloqueadas esperando a liberação do ambiente compartilhado de staging para homologar novas funcionalidades.

## 2. O Problema Real
Criar uma infraestrutura completa e isolada para cada Pull Request aberto e destruí-la automaticamente após o merge.

## 3. Arquitetura e Engenharia da Solução
Automação acionada pelo GitHub Actions executando Terraform com nomes únicos gerados pelo ID do PR e destruição agendada via TTL.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Ephemeral Environments, GitHub Actions, Feature Previews, Cloud FinOps
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform apply -var='env_name=pr-452' -auto-approve
```
