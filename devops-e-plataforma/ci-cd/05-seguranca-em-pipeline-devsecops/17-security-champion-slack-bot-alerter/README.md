# 17 — Bot Notificador de Incidentes de Segurança de Pipeline para Security Champions no Slack

## 🏢 Cenário de Produção e Vida Real
Notificação contextualizada para o desenvolvedor e para o Security Champion do time assim que uma falha for detectada.

### ⚠️ O Problema Real
Pipelines que falham por segurança ficam semanas ignorados sem que o especialista do squad tome conhecimento.

## 🚀 Arquitetura e Engenharia de CI/CD
Webhook em Bash/Python acionado no failure do job de segurança que extrai a CVE encontrada, o arquivo de código causador, marca o autor do commit e o Security Champion no canal do Slack.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`curl, jq, slack-api`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
./notify_security_champion.sh --cve CVE-2026-1234 --author '@dev.silva'
```
