# 11 — Compressor de Alta Vazão para Artefatos com Zstandard (zstd) e pigz

## 🏢 Cenário de Produção e Vida Real
Redução do tempo de upload e download de grandes dumps de banco de dados e bundles de código no CI.

### ⚠️ O Problema Real
O gzip tradicional utiliza apenas um núcleo de CPU e demora minutos para compactar arquivos de gigabytes.

## 🚀 Arquitetura e Engenharia de CI/CD
Script de compressão paralela usando 'zstd -T0 -3' ou 'pigz', medindo a taxa de compressão e velocidade de transferência em tempo real, reduzindo em até 70% o tempo do job.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`zstd, pigz, tar, pv`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
tar -cf - ./dist | zstd -T0 -3 -o artifact.tar.zst
```
