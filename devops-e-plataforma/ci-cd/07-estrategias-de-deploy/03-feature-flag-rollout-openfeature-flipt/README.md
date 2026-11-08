# 03 — Liberação Gradual de Funcionalidades com Feature Flags via OpenFeature e Flipt

## 🏢 Cenário de Produção e Vida Real
Desacoplamento entre o deploy de código em produção e a ativação da funcionalidade para o usuário final.

### ⚠️ O Problema Real
Reverter um deploy inteiro apenas para desativar um botão novo com bug.

## 🚀 Arquitetura e Engenharia de CI/CD
Integração da aplicação com SDK do OpenFeature conectando ao servidor Flipt, controle de ativação por porcentagem de usuários ou IDs específicos via API sem necessidade de novo deploy.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`openfeature, flipt, curl, jq`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
flipt flag update --key new-checkout --enabled=true
```
