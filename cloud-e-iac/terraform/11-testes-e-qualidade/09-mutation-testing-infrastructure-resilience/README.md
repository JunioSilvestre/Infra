# Testes de Mutação em Políticas de Segurança de Infraestrutura

## 1. Cenário de Produção Real
Testes de conformidade passavam com falso positivo porque as regras de verificação eram frágeis e deixavam brechas passarem.

## 2. O Problema Real
Injetar falhas intencionais no código HCL (como mudar um CIDR para 0.0.0.0/0) e validar se as ferramentas de segurança realmente barram o PR.

## 3. Arquitetura e Engenharia da Solução
Script de automação que realiza mutações controladas no código HCL e valida a eficácia dos testes de segurança no pipeline.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Mutation Testing, Policy Verification, Security Gate Validation
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
python run_mutation_tests.py --policy-dir policies/
```
