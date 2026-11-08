# Governança de Mínimo Privilégio para Contas de Serviço de CI/CD

## 1. Cenário de Produção Real
Pipelines de CI frequentemente possuíam permissões excessivas (`AdministratorAccess`), violando o princípio do menor privilégio.

## 2. O Problema Real
Restringir estritamente as ações que a esteira pode executar na nuvem, permitindo apenas criar e modificar os recursos daquele projeto.

## 3. Arquitetura e Engenharia da Solução
Geração automatizada de políticas IAM baseadas no histórico real de chamadas do CloudTrail usando ferramentas como o IAM Policy Simulator.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** AWS IAM Least Privilege, AWS CloudTrail, Pipeline Security Hardening, DevSecOps
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
aws iam simulate-custom-policy --policy-input-list file://pipeline-policy.json
```
