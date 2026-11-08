# 02 — Detector de Serviços Afetados para Builds Otimizados em Monorepos

## 🏢 Cenário de Negócios e Produção Real
Monorepos contendo dezenas de microsserviços onde rebuildar tudo a cada commit desperdiça horas de pipeline e créditos de CI.

### ⚠️ O Problema Real
Builds monolíticos lentos atrasam entregas e geram filas intermináveis de deploy.

## 🚀 Arquitetura e Engenharia em Bash
Comparação de diff de arquivos modificados entre o commit atual e a branch base (git diff --name-only origin/main...HEAD), mapeamento contra pastas de serviços e exportação da matriz de build em JSON para o CI.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`git, jq, awk, sort`

## 📌 Exemplo de Execução CLI
```bash
./affected_services.sh --base origin/main --output-matrix /tmp/matrix.json
```
