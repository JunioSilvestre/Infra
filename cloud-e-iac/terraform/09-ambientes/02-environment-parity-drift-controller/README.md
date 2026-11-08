# Garantia de Paridade de Ambientes (Dev-Prod Parity) com Terragrunt

## 1. Cenário de Produção Real
Erros aconteciam frequentemente em produção porque a versão de software ou arquitetura de redes em staging era diferente do ambiente real.

## 2. O Problema Real
Manter 100% de paridade arquitetural entre todos os estágios do ciclo de vida de entrega, variando apenas o dimensionamento de máquinas.

## 3. Arquitetura e Engenharia da Solução
Uso de Terragrunt para manter o código DRY, referenciando o mesmo módulo base com sobrescrita única de arquivos `env.hcl` de dimensionamento.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Terragrunt, Environment Parity, DRY Architecture, 12-Factor App
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terragrunt run-all plan
```
