# 01 — Autenticação Federada AWS sem Chaves Estáticas via OIDC (OpenID Connect)

## 🏢 Cenário de Produção e Vida Real
Eliminação definitiva de credenciais AWS (AWS_ACCESS_KEY_ID e AWS_SECRET_ACCESS_KEY) armazenadas em segredos do repositório.

### ⚠️ O Problema Real
Chaves estáticas no repositório vazam, não rotacionam e possuem permissões excessivas.

## 🚀 Arquitetura e Engenharia de CI/CD
Configuração de IAM Identity Provider na AWS para o GitHub, troca do token JWT efêmero emitido pelo GitHub Actions por credenciais temporárias do IAM via STS AssumeRoleWithWebIdentity.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`aws-actions/configure-aws-credentials, aws-cli`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
# Workflow com 'permissions: id-token: write' e 'role-to-assume: arn:aws:iam::...'
```
