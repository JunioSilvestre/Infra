# 05 — Desenvolvimento e Empacotamento de Composite Actions Modulares

## 🏢 Cenário de Produção e Vida Real
Reaproveitamento de sequências complexas de comandos (ex: setup de VPN + autenticação em registry + injeção de certificados).

### ⚠️ O Problema Real
Copiar e colar 30 linhas de passos em YAML em múltiplos workflows cria pesadelo de manutenção.

## 🚀 Arquitetura e Engenharia de CI/CD
Encapsulamento de múltiplos passos shell e actions de terceiros em uma Composite Action com arquivo 'action.yml', definindo inputs, outputs e tipagem estrita.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`github-actions composite, bash`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
# action.yml com 'using: composite' e 'steps: - run: ... shell: bash'
```
