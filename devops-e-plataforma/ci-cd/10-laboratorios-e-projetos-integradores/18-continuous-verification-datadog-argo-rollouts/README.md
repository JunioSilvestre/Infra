# 18 — Verificação Contínua e Rollback Orientado a SLOs com Argo Rollouts e Datadog

## 🏢 Cenário de Produção e Vida Real
Deploy automatizado de alta confiabilidade guiado estritamente por Service Level Objectives (SLOs).

### ⚠️ O Problema Real
Testes pontuais de saúde aprovam o deploy mas o sistema começa a queimar o Error Budget lentamente.

## 🚀 Arquitetura e Engenharia de CI/CD
Integração do Argo Rollouts com a API do Datadog durante o deploy canário, avaliando o consumo do Error Budget de SLOs de latência e disponibilidade, cancelando e revertendo o rollout se o orçamento de erro for ameaçado.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`argo-rollouts, datadog-api, curl, jq`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
kubectl get analysisruns -A
```
