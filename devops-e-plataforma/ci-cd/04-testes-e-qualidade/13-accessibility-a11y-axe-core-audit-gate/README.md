# 13 — Auditoria Automatizada de Acessibilidade (a11y) em CI com axe-core e Pa11y

## 🏢 Cenário de Produção e Vida Real
Conformidade obrigatória com as diretrizes WCAG 2.1 níveis A e AA em portais públicos e corporativos.

### ⚠️ O Problema Real
Aplicações que excluem pessoas com deficiência e sofrem processos judiciais por falta de contraste e labels acessíveis.

## 🚀 Arquitetura e Engenharia de CI/CD
Varredura contínua das páginas da aplicação com axe-core/pa11y, identificação de falhas de navegação por teclado e contraste de cores, travando o build se houver violações críticas.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`pa11y-ci, axe-core`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
npx pa11y-ci --sitemap https://staging.corp.com/sitemap.xml
```
