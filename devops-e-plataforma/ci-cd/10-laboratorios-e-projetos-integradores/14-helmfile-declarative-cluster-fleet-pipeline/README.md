# 14 — Esteira de Gerenciamento de Frotas de Clusters Kubernetes com Helmfile

## 🏢 Cenário de Produção e Vida Real
Deploy e sincronização de dezenas de ferramentas de plataforma (Ingress, Monitoring, Security) em múltiplos clusters.

### ⚠️ O Problema Real
Gerenciar chamadas individuais de 'helm install' em dezenas de clusters gera divergências de configuração.

## 🚀 Arquitetura e Engenharia de CI/CD
Definição declarativa em Helmfile com suporte a ambientes (dev, stage, prod), execução paralela de deploys com validação de diff ('helmfile diff') e sincronização idempotente ('helmfile apply').

## 🛠️ Ferramentas e Tecnologias Utilizadas
`helmfile, helm, helm-diff, kubectl`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
helmfile -e production apply
```
