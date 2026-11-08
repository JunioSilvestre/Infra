# 13 — Enforcer de Revisão Obrigatória com CODEOWNERS e Rotatividade de Reviewers

## 🏢 Cenário de Produção e Vida Real
Governança de código garantindo que arquitetos e especialistas revisem módulos críticos (como pagamentos ou segurança).

### ⚠️ O Problema Real
Desenvolvedores aprovam PRs entre si sem a validação do time responsável pelo componente.

## 🚀 Arquitetura e Engenharia de CI/CD
Configuração estrita de .github/CODEOWNERS exigindo aprovação de múltiplos times conforme as pastas alteradas, com sorteio dinâmico de revisores.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`git, codeowners, gh-cli`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
./validate_codeowners.sh --pr-files-list files.txt
```
