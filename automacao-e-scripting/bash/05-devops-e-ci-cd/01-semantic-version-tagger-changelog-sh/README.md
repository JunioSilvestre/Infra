# 01 — Versionador Semântico e Gerador de Changelog Baseado em Conventional Commits

## 🏢 Cenário de Negócios e Produção Real
Esteiras de CI/CD automatizadas onde cada merge na branch principal deve calcular a próxima versão (v1.2.3) e gerar notas de lançamento.

### ⚠️ O Problema Real
Cálculo manual de tags semânticas gera conflitos e esquecimento de changelogs.

## 🚀 Arquitetura e Engenharia em Bash
Inspeção do histórico git a partir da última tag com 'git log', identificação de prefixos 'feat:' (minor), 'fix:' (patch) e 'BREAKING CHANGE' (major), cálculo da nova versão, geração de CHANGELOG.md e criação de tag assinada.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`git, awk, sed, sort`

## 📌 Exemplo de Execução CLI
```bash
./semver_tagger.sh --auto-bump --generate-changelog --push
```
