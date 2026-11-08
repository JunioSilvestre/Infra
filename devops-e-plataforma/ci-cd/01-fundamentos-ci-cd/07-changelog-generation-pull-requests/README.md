# 07 — Gerador Automatizado de CHANGELOG.md e Notas de Lançamento por Categorias

## 🏢 Cenário de Produção e Vida Real
Comunicação transparente de novas funcionalidades para equipes de produto e clientes.

### ⚠️ O Problema Real
Notas de lançamento redigidas manualmente são imprecisas e omitem correções críticas de bugs.

## 🚀 Arquitetura e Engenharia de CI/CD
Agrupamento de commits e PRs categorizados por labels (Features, Bug Fixes, Performance, Security), montagem em Markdown e publicação na GitHub Release.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`git-cliff, conventional-changelog`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
git-cliff --tag v1.5.0 --output CHANGELOG.md
```
