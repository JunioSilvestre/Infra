# 11 — Template Reutilizável para Lint, Testes e Publicação de Helm Charts

## 🏢 Cenário de Produção e Vida Real
Esteira padronizada para manter e distribuir Helm Charts corporativos.

### ⚠️ O Problema Real
Charts publicados sem lint adequado ou com schemas de valores corrompidos.

## 🚀 Arquitetura e Engenharia de CI/CD
Workflow executando 'ct lint' (Chart Testing), instalação de teste em cluster Kind temporário, geração de documentação de valores com helm-docs e publicação OCI no Harbor/GHCR.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`chart-testing, kind, helm-docs`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
ct lint --charts ./charts/my-app
```
