# Pipeline Corporativo de Infraestrutura com GitLab CI e Managed State

## 1. Cenário de Produção Real
Grandes seguradoras em Hartford que utilizam GitLab Enterprise precisam de pipelines com estágios bem definidos e aprovação manual de gerência.

## 2. O Problema Real
Garantir separação de funções onde apenas a esteira automatizada possui credenciais de produção na nuvem.

## 3. Arquitetura e Engenharia da Solução
Configuração do `.gitlab-ci.yml` com estágios de test, plan e apply manual condicionado a branches protegidas e aprovações de SRE.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** GitLab CI/CD, Protected Environments, Managed Terraform State, Compliance
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
gitlab-runner exec docker terraform_apply
```
