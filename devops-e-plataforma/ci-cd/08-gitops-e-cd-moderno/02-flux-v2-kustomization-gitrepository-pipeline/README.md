# 02 — Pipeline GitOps com Flux v2: Sincronização Declarativa e Verificação de Saúde

## 🏢 Cenário de Produção e Vida Real
Entrega contínua GitOps gerenciada nativamente no Kubernetes pelo motor do Flux v2.

### ⚠️ O Problema Real
Falta de sincronização automática entre o que está no repositório Git e o que roda no cluster.

## 🚀 Arquitetura e Engenharia de CI/CD
Configuração dos recursos GitRepository e Kustomization com intervalo de reconciliação de 5 minutos, validação de health checks e geração de notificações de eventos para o Slack.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`flux, kubectl, yaml`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
flux get kustomizations --watch
```
