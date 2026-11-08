# 08 — Injeção Dinâmica de Segredos do HashiCorp Vault em Workflows do GitHub

## 🏢 Cenário de Produção e Vida Real
Integração segura com Vault corporativo para obter credenciais efêmeras de banco durante a execução de testes.

### ⚠️ O Problema Real
Armazenar centenas de senhas em GitHub Secrets sobrecarrega a equipe de segurança e impede rotação centralizada.

## 🚀 Arquitetura e Engenharia de CI/CD
Uso da action oficial 'hashicorp/vault-action' autenticando via OIDC (JWT do GitHub), recuperando credenciais sob demanda com expiração atrelada à duração do job.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`hashicorp/vault-action, vault`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
# uses: hashicorp/vault-action@v3 com method: jwt e role: github-role
```
