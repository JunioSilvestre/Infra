# 03 — Escalonador Autônomo de Runners Self-Hosted em Kubernetes com ARC

## 🏢 Cenário de Produção e Vida Real
Execução de pipelines em infraestrutura própria para conformidade com dados restritos e economia de custos.

### ⚠️ O Problema Real
Manter dezenas de VMs ligadas 24h para rodar runners gera custos desnecessários em horários ociosos.

## 🚀 Arquitetura e Engenharia de CI/CD
Deploy do Actions Runner Controller (ARC) no cluster Kubernetes, provisionamento de RunnerDeployments com HorizontalRunnerAutoscaler escalando pods de 0 a 50 conforme a fila de jobs.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`helm, kubectl, actions-runner-controller`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
kubectl get autoscalingrunnersets -A
```
