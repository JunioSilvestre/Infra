# 20 — Template de Auditoria e Conformidade de Pipelines (Pipeline as Code Governance)

## 🏢 Cenário de Produção e Vida Real
Garantia de que nenhum repositório da empresa desabilite steps obrigatórios de segurança ou testes.

### ⚠️ O Problema Real
Times de engenharia alterando seus pipelines para comentar linters e testes com o objetivo de acelerar deploys.

## 🚀 Arquitetura e Engenharia de CI/CD
Job de auditoria que valida a estrutura dos arquivos de workflow contra a especificação de governança da empresa, travando o build se steps mandatórios estiverem ausentes.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`actionlint, yq, jq, bash`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
./audit_pipeline_rules.sh --workflow .github/workflows/ci.yml --required-steps 'sast,lint,test'
```
