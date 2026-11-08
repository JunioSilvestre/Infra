# 17 — Gerenciador de Regras de Proteção de Branches como Código (GitHub Rulesets)

## 🏢 Cenário de Produção e Vida Real
Governança unificada de regras de segurança em dezenas de repositórios da organização.

### ⚠️ O Problema Real
Configurar manualmente 'Require pull request reviews' e 'Require status checks' em cada repositório gera inconsistências.

## 🚀 Arquitetura e Engenharia de CI/CD
Definição de regras em JSON declarativo e aplicação sincronizada via API REST/GraphQL do GitHub, impedindo force push e exigindo assinaturas de commits em toda a org.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`curl, jq, gh-cli`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
./sync_rulesets.sh --org my-corp --ruleset-config ruleset.json
```
