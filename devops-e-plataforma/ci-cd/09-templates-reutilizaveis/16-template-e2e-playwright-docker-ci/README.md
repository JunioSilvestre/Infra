# 16 — Template Reutilizável de Testes E2E com Playwright em Containers Oficiais

## 🏢 Cenário de Produção e Vida Real
Execução confiável de testes end-to-end sem problemas de instalação de navegadores e dependências de sistema.

### ⚠️ O Problema Real
Testes E2E que falham por falta de pacotes de fontes ou drivers gráficos no runner do CI.

## 🚀 Arquitetura e Engenharia de CI/CD
Template que executa a suíte de testes dentro do container oficial do Playwright com navegadores pré-instalados, grava vídeos de falha e anexa relatório interativo no resumo do pipeline.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`playwright, docker`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
npx playwright test --reporter=html
```
