# Bloqueio Automatizado de PRs que Ultrapassem o Teto Orçamentário

## 1. Cenário de Produção Real
Uma squad de desenvolvimento alterou o tipo de instância de computação elevando a fatura em mais de \$10.000 por mês.

## 2. O Problema Real
Impor limites financeiros automatizados onde PRs que aumentem o custo mensal em mais de 15% sejam bloqueados para revisão.

## 3. Arquitetura e Engenharia da Solução
Configuração de Infracost com políticas de threshold integradas ao pipeline de CI barrando o avanço da esteira automaticamente.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Infracost, FinOps Budget Thresholds, Financial Governance, CI/CD Gate
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
infracost diff --path . --format json | jq '.totalMonthlyCostDiff'
```
