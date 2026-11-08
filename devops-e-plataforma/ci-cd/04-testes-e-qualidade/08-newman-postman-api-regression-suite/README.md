# 08 — Execução Automatizada de Coleções Postman para Regressão de API com Newman

## 🏢 Cenário de Produção e Vida Real
Automação das coleções de testes de APIs mantidas por equipes de QA diretamente no pipeline de CI.

### ⚠️ O Problema Real
Testes manuais no Postman tomam horas da equipe a cada novo deploy.

## 🚀 Arquitetura e Engenharia de CI/CD
Execução não interativa das coleções Postman via Newman CLI com ambientes dinâmicos (.json), geração de relatórios JUnit XML e HTML estilizado para o CI.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`newman, newman-reporter-htmlextra`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
newman run api_collection.json -e staging_env.json --reporters cli,htmlextra --reporter-htmlextra-export report.html
```
