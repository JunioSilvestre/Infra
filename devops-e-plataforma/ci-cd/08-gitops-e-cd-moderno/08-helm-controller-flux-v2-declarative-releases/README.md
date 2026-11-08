# 08 — Gerenciamento Declarativo de Releases Helm com HelmController do Flux v2

## 🏢 Cenário de Produção e Vida Real
Instalação e manutenção contínua de Helm charts complexos (Prometheus, Vault, Cert-Manager) via GitOps.

### ⚠️ O Problema Real
Rodar 'helm install' manualmente via terminal não oferece rastreabilidade nem recuperação automática de falhas.

## 🚀 Arquitetura e Engenharia de CI/CD
Definição de recursos 'HelmRepository' e 'HelmRelease' no Git, com valores customizados em values.yaml e controle de dependências entre charts gerenciados pelo controlador do Flux.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`flux, helm, kubectl`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
flux get helmreleases -A
```
