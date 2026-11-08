# 19 — Classificador e Triagem Automática de Pull Requests Baseado em Arquivos Alterados

## 🏢 Cenário de Produção e Vida Real
Organização do fluxo de trabalho em repositórios grandes com múltiplos times.

### ⚠️ O Problema Real
Dificuldade de filtrar PRs por área (frontend, backend, infra, database) para fins de relatório e revisão.

## 🚀 Arquitetura e Engenharia de CI/CD
Automação acionada no evento 'pull_request' que analisa as extensões e diretórios dos arquivos alterados (.tf -> infra, .tsx -> frontend, /db -> database) e aplica labels coloridas automaticamente.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`actions/labeler, yq`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
# Configuração declarativa em .github/labeler.yml
```
