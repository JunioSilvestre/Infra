# Distribuição e Versionamento de Módulos com Git Tags e SemVer

## 1. Cenário de Produção Real
Alterações em módulos quebravam ambientes de produção porque os projetos apontavam para a branch `main` em vez de versões imutáveis.

## 2. O Problema Real
Estabelecer governança de código onde times consumam apenas releases estáveis e testados de módulos corporativos.

## 3. Arquitetura e Engenharia da Solução
Publicação de módulos em repositórios Git corporativos com releases semânticos (`v1.2.0`), consumidos via `source = "git::https://...?ref=v1.2.0"`.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Semantic Versioning (SemVer), Git Tagging, Enterprise Module Catalog
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform init -upgrade
```
