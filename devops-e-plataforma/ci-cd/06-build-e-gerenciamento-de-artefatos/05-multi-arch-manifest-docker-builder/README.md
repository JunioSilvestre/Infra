# 05 — Construção de Imagens Multi-Arquitetura (linux/amd64 e linux/arm64) com Manifest Lists

## 🏢 Cenário de Produção e Vida Real
Suporte transparente para servidores x86 em data centers e servidores ARM (AWS Graviton) com redução de 40% em custo.

### ⚠️ O Problema Real
Imagens compiladas apenas para x86 falham com erro 'exec format error' em instâncias ARM.

## 🚀 Arquitetura e Engenharia de CI/CD
Criação de builder cross-platform via Buildx com emulação QEMU, compilação paralela para linux/amd64 e linux/arm64 e criação de OCI Manifest List unificado sob a mesma tag.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`docker-buildx, qemu, crane`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
docker buildx build --platform linux/amd64,linux/arm64 -t my-app:multiarch --push .
```
