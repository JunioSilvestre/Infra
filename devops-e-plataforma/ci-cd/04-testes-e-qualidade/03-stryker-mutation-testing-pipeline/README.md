# 03 — Testes de Mutação com Stryker: Medindo a Real Eficácia dos Testes Unitários

## 🏢 Cenário de Produção e Vida Real
Auditoria de qualidade em sistemas bancários onde testes unitários com asserções vazias enganam a métrica de cobertura tradicional.

### ⚠️ O Problema Real
100% de cobertura de código que não detecta bugs reais porque não valida os resultados (testes sem asserções).

## 🚀 Arquitetura e Engenharia de CI/CD
Execução do Stryker Mutator introduzindo mutações artificiais no código (troca de '>' por '<', remoção de chamadas), validação se os testes existentes matam os mutantes e exigência de Mutation Score > 75%.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`stryker, jest, dotnet-stryker`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
npx stryker run --reporters dots,clear-text,dashboard
```
