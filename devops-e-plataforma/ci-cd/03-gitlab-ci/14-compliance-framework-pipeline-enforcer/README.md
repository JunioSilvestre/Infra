# 14 — Enforcer de Compliance Frameworks Obrigatórios para Repositórios Corporativos

## 🏢 Cenário de Produção e Vida Real
Obrigatoriedade de que todos os repositórios da empresa rodem auditorias de segurança antes do deploy por exigência SOX/ISO 27001.

### ⚠️ O Problema Real
Desenvolvedores podem remover steps de segurança do seu arquivo .gitlab-ci.yml local.

## 🚀 Arquitetura e Engenharia de CI/CD
Vinculação do repositório a um 'Compliance Framework' no nível do Grupo do GitLab, que injeta compulsoriamente um pipeline pai de segurança que não pode ser sobrescrito pelo projeto.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`gitlab-compliance, yaml`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
# Pipeline central de compliance com include: project: 'security/compliance-pipeline'
```
