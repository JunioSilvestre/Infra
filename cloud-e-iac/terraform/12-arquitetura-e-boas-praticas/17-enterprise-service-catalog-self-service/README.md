# Catálogo Corporativo de Autosserviço de Infraestrutura para Desenvolvedores

## 1. Cenário de Produção Real
Desenvolvedores demoravam semanas para obter novas filas SQS ou bancos de dados devido a processos burocráticos de aprovação manual.

## 2. O Problema Real
Empoderar desenvolvedores fornecendo um catálogo de produtos de infraestrutura pré-aprovados e auditados em modo self-service.

## 3. Arquitetura e Engenharia da Solução
Deploy do AWS Service Catalog integrado com módulos Terraform homologados pelo time de segurança e SRE.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** AWS Service Catalog, Self-Service Infrastructure, Platform Engineering, Developer Velocity
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
aws servicecatalog list-portfolios
```
