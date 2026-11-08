# 14 — Templates de Análise de Métricas para Rollouts Progressivos em GitOps

## 🏢 Cenário de Produção e Vida Real
Padronização das análises de métricas para canários em múltiplos serviços gerenciados via GitOps.

### ⚠️ O Problema Real
Cada serviço configura queries de métricas divergentes para avaliar o sucesso do deploy.

## 🚀 Arquitetura e Engenharia de CI/CD
Criação de AnalysisTemplates reutilizáveis no Argo Rollouts com queries pré-homologadas no Prometheus (taxa de sucesso de requisições, latência p95), referenciadas por todos os Rollouts.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`argo-rollouts, prometheus, yaml`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
kubectl get analysistemplates -A
```
