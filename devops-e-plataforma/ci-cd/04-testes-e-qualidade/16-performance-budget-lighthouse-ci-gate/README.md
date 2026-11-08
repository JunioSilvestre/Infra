# 16 — Portão de Performance Web com Orçamentos Rígidos no Lighthouse CI (LHCI)

## 🏢 Cenário de Produção e Vida Real
Manutenção dos Core Web Vitals (LCP, FID/INP, CLS) em aplicações frontend Next.js/React.

### ⚠️ O Problema Real
Desenvolvedores adicionam imagens pesadas ou scripts de terceiros que destroem a velocidade de carregamento da página.

## 🚀 Arquitetura e Engenharia de CI/CD
Execução automatizada do Lighthouse CI em modo headless contra páginas compiladas, validação de Performance Score > 90 e limite rígido de peso de bundle JS (< 300KB).

## 🛠️ Ferramentas e Tecnologias Utilizadas
`lhci, lighthouse-ci`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
lhci autorun --config=lighthouserc.json
```
