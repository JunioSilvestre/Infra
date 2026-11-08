# 17 — Otimizador de Assets Estáticos com Compressão Prévia Brotli/Gzip para CDN/S3

## 🏢 Cenário de Produção e Vida Real
Publicação de aplicações web frontend (Next.js/React) para distribuição ultrarrápida via CloudFront/Cloudflare.

### ⚠️ O Problema Real
O servidor web precisa comprimir arquivos dinamicamente em tempo real, consumindo CPU desnecessariamente.

## 🚀 Arquitetura e Engenharia de CI/CD
Script de pipeline que pré-compacta todos os arquivos estáticos (.js, .css, .html) com Brotli (--best) e Gzip (-9), faz upload para o S3 com os cabeçalhos Content-Encoding corretos e invalida o cache da CDN.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`brotli, gzip, aws-s3, aws-cloudfront`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
./compress_assets.sh --dir ./out --upload s3://my-static-cdn --cf-dist E12345
```
