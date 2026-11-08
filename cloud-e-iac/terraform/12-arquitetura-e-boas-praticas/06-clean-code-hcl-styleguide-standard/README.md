# Guia de Estilo e Padronização Limpa de Código HCL para Equipes Globais

## 1. Cenário de Produção Real
Monorepos com centenas de arquivos HCL sofriam com padrões conflitantes de nomenclatura, falta de clareza e acoplamento desnecessário.

## 2. O Problema Real
Estabelecer um padrão de codificação profissional seguido uniformemente por todos os times de engenharia da empresa.

## 3. Arquitetura e Engenharia da Solução
Documentação formal de convenções de nomenclatura, estruturação de arquivos (`main.tf`, `variables.tf`, `outputs.tf`), e linting com pre-commit.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Clean Code, HCL Styleguide, Engineering Excellence, Code Standardization
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform fmt -check -recursive
```
