# 14 — Auditor Automatizado de Cabeçalhos HTTP de Segurança e Qualidade TLS (A+ Rating)

## 🏢 Cenário de Produção e Vida Real
Garantia de que novos deploys mantenham cabeçalhos de proteção (HSTS, CSP, X-Frame-Options) configurados.

### ⚠️ O Problema Real
Alterações no proxy ou balanceador que acidentalmente removem cabeçalhos de segurança essenciais.

## 🚀 Arquitetura e Engenharia de CI/CD
Execução de auditoria contra a URL após o deploy via curl ou SSL Labs API, validação da presença de HSTS estrito e avaliação do Content-Security-Policy.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`curl, jq, testssl.sh`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
./audit_headers.sh --url 'https://staging.corp.com' --require-hsts
```
