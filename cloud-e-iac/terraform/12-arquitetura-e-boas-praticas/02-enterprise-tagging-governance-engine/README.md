# Motor Corporativo de Governança e Validação de Tags de FinOps e Auditoria

## 1. Cenário de Produção Real
Recursos criados sem identificação de Centro de Custo, Dono e Ambiente geravam milhões de dólares em custos órfãos não alocados.

## 2. O Problema Real
Impedir o provisionamento de qualquer recurso que não contenha as tags corporativas obrigatórias padronizadas pela empresa.

## 3. Arquitetura e Engenharia da Solução
Combinação de `locals` com merge forçado de tags padronizadas e validação estrita via OPA Conftest e políticas de nuvem.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Tag Governance, FinOps Cost Allocation, OPA Conftest, Cloud Auditing
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform plan | grep -E '(Owner|CostCenter|Environment)'
```
