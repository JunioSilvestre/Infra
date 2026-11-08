# 17 — Gerador de Relatórios Ricos em Markdown no GitHub Step Summary

## 🏢 Cenário de Produção e Vida Real
Apresentação executiva e visual dos resultados de testes, linters e cobertura direto na página de resumo do job.

### ⚠️ O Problema Real
Desenvolvedores precisam vasculhar milhares de linhas de log do terminal para achar um erro simples.

## 🚀 Arquitetura e Engenharia de CI/CD
Script que consome relatórios JSON/XML de ferramentas de teste e formata tabelas, alertas e gráficos em Markdown gravando diretamente na variável '$GITHUB_STEP_SUMMARY'.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`github-step-summary, awk, jq`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
echo "### 📊 Relatório de Testes
| Status | Pass | Fail |
|---|---|---|" >> $GITHUB_STEP_SUMMARY
```
