# 07 — Auditoria de Segurança em Infraestrutura como Código (IaC) com Checkov e tfsec

## 🏢 Cenário de Produção e Vida Real
Bloqueio de templates Terraform, Helm e Kubernetes que criam recursos de nuvem inseguros.

### ⚠️ O Problema Real
Desenvolvedores criam buckets S3 públicos ou Security Groups com porta 0.0.0.0/0 aberta por distração.

## 🚀 Arquitetura e Engenharia de CI/CD
Varredura de todo o código de infraestrutura no PR com Checkov, identificação de violações de políticas de segurança (ex: CKV_AWS_20) e trava imediata do pipeline.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`checkov, tfsec, terraform`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
checkov -d ./terraform --framework terraform --compact --soft-fail
```
