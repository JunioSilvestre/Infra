# 18 — Otimização de Builds Docker Multi-Stage com Cache Remoto no Registry

## 🏢 Cenário de Produção e Vida Real
Construção de imagens de containers em runners efêmeros que não possuem cache de disco persistente.

### ⚠️ O Problema Real
Runners efêmeros refazem o download e a compilação de todas as camadas do Dockerfile a cada execução.

## 🚀 Arquitetura e Engenharia de CI/CD
Utilização do Docker BuildKit com flags '--cache-to type=registry,mode=max' e '--cache-from type=registry', reaproveitando camadas intactas direto do registry corporativo.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`docker, buildx, ghcr.io`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
docker buildx build --cache-from type=registry,ref=repo/cache --cache-to type=registry,ref=repo/cache,mode=max --push .
```
