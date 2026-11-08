# 13 — Portão de Imposição de Commits Assinados (GPG/SSH) no Repositório GitOps

## 🏢 Cenário de Produção e Vida Real
Segurança máxima contra commits forjados por atacantes no repositório que controla a infraestrutura de produção.

### ⚠️ O Problema Real
Qualquer commit feito com e-mail forjado no Git seria aplicado no cluster pelo motor de GitOps.

## 🚀 Arquitetura e Engenharia de CI/CD
Configuração no ArgoCD/Flux exigindo que todo commit processado tenha assinatura criptográfica válida verificada contra o chaveiro corporativo aprovado, rejeitando commits não assinados.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`gpg, git, flux, argocd`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
git verify-commit HEAD
```
