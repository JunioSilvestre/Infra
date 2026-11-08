# 10 — Sistema Centralizado de Notificações do ArgoCD para Slack e PagerDuty

## 🏢 Cenário de Produção e Vida Real
Comunicação em tempo real para equipes de suporte sobre o status de sincronização e falhas de deploy.

### ⚠️ O Problema Real
Falta de avisos imediatos quando um deploy GitOps falha por imagem inexistente ou erro de permissão.

## 🚀 Arquitetura e Engenharia de CI/CD
Configuração do módulo nativo 'argocd-notifications' com templates de mensagens customizadas disparadas nos gatilhos 'on-sync-failed', 'on-deployed' e 'on-health-degraded'.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`argocd-notifications, slack-api, pagerduty`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
# ConfigMap argocd-notifications-cm com templates declarativos
```
