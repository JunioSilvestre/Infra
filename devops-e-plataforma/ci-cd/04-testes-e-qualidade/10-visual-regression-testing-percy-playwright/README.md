# 10 — Testes de Regressão Visual Automatizados com Detecção de Discrepâncias de Pixel

## 🏢 Cenário de Produção e Vida Real
Garantia de que alterações no CSS ou design tokens não quebrem o layout visual em outras páginas do sistema.

### ⚠️ O Problema Real
Mudança em classe global quebra o botão de pagamento em resoluções mobile sem acusar erro de JavaScript.

## 🚀 Arquitetura e Engenharia de CI/CD
Captura de screenshots de referência em múltiplas resoluções, comparação automática pixel a pixel contra a baseline visual e alerta de discrepâncias percentuais.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`playwright, pixelmatch, percy`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
npx percy exec -- npx playwright test
```
