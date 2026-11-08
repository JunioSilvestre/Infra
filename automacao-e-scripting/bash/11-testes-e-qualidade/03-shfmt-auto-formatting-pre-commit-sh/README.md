# 03 — Formatador Automatizado de Código Shell com shfmt e Validação de Estilo

## 🏢 Cenário de Negócios e Produção Real
Padronização de indentação, operadores e convenções em bases de código mantidas por dezenas de engenheiros.

### ⚠️ O Problema Real
Códigos com indentações divergentes (tabs vs espaços) tornam git diffs ilegíveis.

## 🚀 Arquitetura e Engenharia em Bash
Script de automação com shfmt (-i 2 -ci -bn), modo verificação (-d) para falhar se houver código fora do padrão e modo aplicação (-w) para auto-formatação em git hook.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`shfmt, git, xargs`

## 📌 Exemplo de Execução CLI
```bash
./format_scripts.sh --write --indent 2
```
