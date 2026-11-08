# 10 — Deploy em Ambientes com Aprovação Manual e Notificação Interativa no Slack

## 🏢 Cenário de Produção e Vida Real
Publicação em produção exigindo 'ok' formal do Tech Lead com histórico auditável de quem clicou no botão.

### ⚠️ O Problema Real
Falta de controle e auditoria sobre quem executou o deploy manual em produção.

## 🚀 Arquitetura e Engenharia de CI/CD
Uso da diretiva 'when: manual' com 'environment: name: production, url: ...', envio automático de mensagem rica no Slack com link direto para aprovar o job e registro de auditoria.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`gitlab-ci, curl, jq, slack-webhook`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
# when: manual com allow_failure: false e environment: production
```
