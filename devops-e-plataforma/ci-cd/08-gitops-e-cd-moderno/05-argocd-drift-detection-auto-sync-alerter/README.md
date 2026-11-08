# 05 — Detector de Desvio (Drift) e Reconciliação Automática no ArgoCD

## 🏢 Cenário de Produção e Vida Real
Prevenção de alterações manuais 'fora da banda' (feitas via kubectl direto no cluster) que criam divergência do repositório Git.

### ⚠️ O Problema Real
Um desenvolvedor altera a imagem ou réplicas via kubectl e a mudança é apagada no próximo deploy sem aviso.

## 🚀 Arquitetura e Engenharia de CI/CD
Configuração de 'syncPolicy: automated: prune: true, selfHeal: true' no ArgoCD, com webhook notificando a equipe de SRE sempre que um drift manual for revertido para o estado do Git.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`argocd, curl, jq, slack-webhook`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
argocd app get my-app --refresh
```
