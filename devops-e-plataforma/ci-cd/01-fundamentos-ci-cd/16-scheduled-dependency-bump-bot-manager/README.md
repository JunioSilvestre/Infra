# 16 — Gerenciador e Consolidador de PRs Automáticos de Dependências (Dependabot/Renovate)

## 🏢 Cenário de Produção e Vida Real
Manutenção contínua de bibliotecas com atualização automatizada de patches de segurança.

### ⚠️ O Problema Real
Dezenas de PRs individuais abertos pelo Dependabot poluem o repositório e sobrecarregam os revisores.

## 🚀 Arquitetura e Engenharia de CI/CD
Configuração do Renovate/Dependabot com agrupamento inteligente de dependências (agrupando patches menores em um único PR semanal) e auto-merge se a suíte de testes passar 100%.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`renovate, dependabot, gh-cli`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
renovate-config-validator .github/renovate.json
```
