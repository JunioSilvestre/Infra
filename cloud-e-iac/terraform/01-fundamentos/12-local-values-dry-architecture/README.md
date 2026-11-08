# Eliminação de Duplicação de Configuração com Locals e Mapeamentos Corporativos

## 1. Cenário de Produção Real
Tags de centro de custo, ambiente, squad e compliance estavam espalhadas e digitadas incorretamente em mais de 50 arquivos de recurso.

## 2. O Problema Real
Garantir conformidade total com a taxonomia corporativa de tags e convenções de nomenclatura através de um ponto único de verdade.

## 3. Arquitetura e Engenharia da Solução
Centralização de lógica em `locals.tf` computando tags padronizadas com merges condicionais (`merge(local.common_tags, var.extra_tags)`).

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Terraform Locals, DRY Architecture, Resource Tagging Governance
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform plan | grep -A 5 'tags ='
```
