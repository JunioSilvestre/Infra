# 01 — Scanner Rigoroso de Segredos com Gitleaks em Hook de CI e Pre-Commit

## 🏢 Cenário de Produção e Vida Real
Impedir que chaves privadas, senhas de banco, tokens de API e certificados sejam commitados no repositório corporativo.

### ⚠️ O Problema Real
Vazamento acidental de chaves de nuvem que são mineradas por bots em segundos.

## 🚀 Arquitetura e Engenharia de CI/CD
Execução do Gitleaks varrendo o histórico e commits pendentes com regras customizadas em .gitleaks.toml, bloqueando o pipeline e alertando o time de segurança.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`gitleaks, git, bash`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
gitleaks detect --source . --verbose --config .gitleaks.toml
```
