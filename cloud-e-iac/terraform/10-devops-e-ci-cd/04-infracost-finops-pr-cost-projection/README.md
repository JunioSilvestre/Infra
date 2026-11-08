# Projeção Automática de Impacto Financeiro de Infraestrutura com Infracost

## 1. Cenário de Produção Real
Desenvolvedores frequentemente subiam instâncias de nuvem gigantescas sem perceber que custariam milhares de dólares a mais por mês.

## 2. O Problema Real
Exibir o impacto financeiro exato (diferença de custo mensal em dólares) diretamente no corpo do Pull Request antes da aprovação.

## 3. Arquitetura e Engenharia da Solução
Integração do Infracost CLI no pipeline de CI comparando o plan atual com a branch base e bloqueando alterações acima do orçamento.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Infracost, Cloud FinOps, Budget Governance, GitHub Actions Integration
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
infracost breakdown --path .
```
