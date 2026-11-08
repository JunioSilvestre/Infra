# 09 — Pipeline de Entrega Contínua para Edge Workers Globais (Cloudflare Workers / CloudFront)

## 🏢 Cenário de Produção e Vida Real
Deploy de lógica de borda e middlewares em centenas de data centers ao redor do mundo em menos de 10 segundos.

### ⚠️ O Problema Real
Deploys de scripts de borda quebrados que afetam imediatamente 100% dos usuários globais.

## 🚀 Arquitetura e Engenharia de CI/CD
Esteira automatizada com Wrangler / Serverless Framework executando testes de integração em mock de ambiente V8, deploy com tráfego gradual (Gradual Rollout) e verificação sintética de saúde a partir de múltiplos países.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`wrangler, vitest, curl, jq`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
wrangler deploy --env production
```
