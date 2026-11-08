# 11 — Integração com GitHub Deployments API e Proteção de Ambientes com Aprovação

## 🏢 Cenário de Produção e Vida Real
Controle rigoroso de quem pode publicar em ambientes sensíveis (Homologação, Produção).

### ⚠️ O Problema Real
Deploys disparados sem aprovação formal e sem visibilidade no histórico de deployments do repositório.

## 🚀 Arquitetura e Engenharia de CI/CD
Uso de 'environment: production' com regras de proteção nativas do GitHub (Required Reviewers, Wait Timer), atualização de status via API (in_progress, success, failure) e integração com Slack.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`github-environments, curl, gh-cli`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
gh api repos/:owner/:repo/deployments
```
