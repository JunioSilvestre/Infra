# Auditoria e Garantia de Conformidade CIS com Checkov no Pipeline

## 1. Cenário de Produção Real
Comitê de risco exigia comprovação de que o código de infraestrutura está em conformidade com as diretrizes do CIS AWS Foundation Benchmark.

## 2. O Problema Real
Garantir verificação automatizada contínua contra mais de 1.000 políticas de segurança e conformidade conhecidas.

## 3. Arquitetura e Engenharia da Solução
Execução do Checkov no pipeline de CI com supressões justificadas (`--skip-check`) documentadas no próprio código HCL.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Bridgecrew Checkov, CIS Benchmarks, Compliance as Code, Automated Auditing
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
checkov -d . --framework terraform --output cli
```
