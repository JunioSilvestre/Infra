# 04 — Atualização Contínua (Rolling Update) no Kubernetes com Drenagem Limpa e PreStop Hook

## 🏢 Cenário de Produção e Vida Real
Garantia de zero perda de pacotes durante o rollout de novas réplicas de pods.

### ⚠️ O Problema Real
O Kubernetes mata o pod antigo antes que o balanceador pare de enviar novas requisições, gerando erros 502 temporários.

## 🚀 Arquitetura e Engenharia de CI/CD
Configuração de maxSurge: 25%, maxUnavailable: 0, injeção de ciclo de vida preStop com 'sleep 10' para dar tempo ao kube-proxy de atualizar regras de iptables antes do encerramento do processo.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`kubectl, yaml, k8s-deployments`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
kubectl rollout status deployment/web-api --timeout=120s
```
