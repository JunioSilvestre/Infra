# 18 — Sincronizador e Auditor de Regras de Aprovação de Merge Requests via API

## 🏢 Cenário de Produção e Vida Real
Garantia de que todo Merge Request em repositórios corporativos exija pelo menos 2 aprovações e bloqueie auto-aprovação.

### ⚠️ O Problema Real
Repositórios recém-criados esquecem de configurar 'Prevent approval by author' e 'Require 2 approvals'.

## 🚀 Arquitetura e Engenharia de CI/CD
Script de auditoria e aplicação em lote que varre a API v4 do GitLab (/projects/:id/approval_rules), aplicando configurações padronizadas de governança em todos os projetos da organização.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`curl, jq, bash`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
./sync_mr_rules.sh --group-id 4021 --min-approvals 2 --block-author-approval
```
