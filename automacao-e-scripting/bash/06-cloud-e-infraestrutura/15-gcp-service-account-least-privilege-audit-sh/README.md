# 15 — Auditor de Menor Privilégio e Permissões Ociosas para Service Accounts no GCP

## 🏢 Cenário de Negócios e Produção Real
Conformidade e segurança em projetos do Google Cloud Platform.

### ⚠️ O Problema Real
Service Accounts criadas com papéis administrativos amplos (Editor, Owner) utilizadas em aplicações simples geram riscos gravíssimos de movimentação lateral.

## 🚀 Arquitetura e Engenharia em Bash
Consulta ao GCP Policy Analyzer e Recommender API para identificar papéis atribuídos que não foram exercidos nos últimos 90 dias, geração de recomendações de redução de escopo e remoção segura de bindings obsoletos.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`gcloud, jq, date`

## 📌 Exemplo de Execução CLI
```bash
./gcp_iam_audit.sh --project-id jcscode-prod --recommend-least-privilege
```
