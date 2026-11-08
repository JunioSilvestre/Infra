# 17 — Gerador de Relatórios de Code Quality Integrados no Formato Code Climate

## 🏢 Cenário de Produção e Vida Real
Exibição dos achados de qualidade de código e débitos técnicos diretamente no widget do Merge Request do GitLab.

### ⚠️ O Problema Real
Desenvolvedores não leem relatórios textuais gerados nos logs e aprovam MRs com código degradado.

## 🚀 Arquitetura e Engenharia de CI/CD
Execução de linters (ESLint, flake8, Sonar) com conversor para o schema JSON do Code Climate, salvamento do artefato com 'artifacts: reports: codequality: gl-code-quality-report.json'.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`eslint, jq, gitlab-codequality`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
npx eslint --format gl-codequality -o gl-code-quality-report.json src/
```
