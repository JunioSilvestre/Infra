# 19 — Validador e Rotacionador de Segredos e Tokens de Integração SaaS no CI

## 🏢 Cenário de Produção e Vida Real
Segurança de chaves de integração com serviços de terceiros (Stripe, Twilio, SendGrid) utilizadas no CI.

### ⚠️ O Problema Real
Chaves de teste e produção misturadas no mesmo repositório com validade indefinida.

## 🚀 Arquitetura e Engenharia de CI/CD
Script de auditoria que valida se as chaves em uso são estritamente do ambiente de sandbox/teste, checa a data de rotação e dispara alerta preventivo de expiração.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`curl, jq, date, openssl`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
./verify_saas_keys.sh --env staging --check-expiry
```
