# 05 — Suíte de Testes E2E Paralelos em Modo Headless com Playwright e Vídeo de Falhas

## 🏢 Cenário de Produção e Vida Real
Homologação de fluxos críticos de navegação em múltiplos navegadores (Chromium, Firefox, WebKit).

### ⚠️ O Problema Real
Bugs específicos de renderização ou JavaScript que só ocorrem no Safari/WebKit.

## 🚀 Arquitetura e Engenharia de CI/CD
Execução de testes E2E com Playwright em modo headless e paralelo em containers, captura de traces e vídeos em caso de falha, e upload dos artefatos de depuração no CI.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`playwright, npx, github-actions`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
npx playwright test --workers=4 --reporter=html
```
