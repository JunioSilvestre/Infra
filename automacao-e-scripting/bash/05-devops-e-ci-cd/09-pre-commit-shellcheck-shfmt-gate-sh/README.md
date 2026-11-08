# 09 — Portão de Qualidade de Scripts com ShellCheck e shfmt em Pre-Commit Hook

## 🏢 Cenário de Negócios e Produção Real
Equipes de infraestrutura que mantêm dezenas de scripts Bash em repositórios versionados.

### ⚠️ O Problema Real
Scripts com erros de sintaxe, variáveis não cotadas e falta de 'set -euo pipefail' sobem para produção gerando falhas imprevisíveis.

## 🚀 Arquitetura e Engenharia em Bash
Hook do git que lista arquivos .sh modificados no commit, executa 'shellcheck -x -S error' e 'shfmt -d -i 2 -ci', bloqueando o commit se houver violações com exibição de linhas problemáticas coloridas.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`git, shellcheck, shfmt, awk`

## 📌 Exemplo de Execução CLI
```bash
./lint_gate.sh --check-staged --severity warning --format-check
```
