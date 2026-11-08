# Barreiras Automatizadas de Conformidade com Open Policy Agent (OPA) e Conftest

## 1. Cenário de Produção Real
Auditores de segurança exigiam que nenhuma porta SSH (22) ficasse aberta para a internet e que todos os discos tivessem criptografia ativada.

## 2. O Problema Real
Bloquear a esteira de CI/CD automaticamente se o plano do Terraform violar as políticas de segurança corporativas escritas em Rego.

## 3. Arquitetura e Engenharia da Solução
Conversão do plano para JSON via `terraform show -json` e validação com suítes de regras OPA Conftest antes de autorizar o apply.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Open Policy Agent (OPA), Conftest, Rego Language, Policy as Code, CI/CD Gates
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
conftest test tfplan.json -p policies/
```
