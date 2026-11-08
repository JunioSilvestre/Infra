# 15 — Otimizador e Esmagador de Camadas de Containers (Layer Squashing) para Tamanho Mínimo

## 🏢 Cenário de Produção e Vida Real
Redução do overhead de rede no download de imagens por centenas de nós em clusters de alta escala.

### ⚠️ O Problema Real
Imagens com 15 camadas acumulam arquivos deletados em etapas intermediárias, inflando o tamanho final.

## 🚀 Arquitetura e Engenharia de CI/CD
Uso de flags modernas de squashing no BuildKit ou ferramentas como 'docker-squash' para combinar todas as camadas em uma única camada compacta sem metadados redundantes.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`docker-buildx, docker-squash`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
docker buildx build --output type=docker,compression=zstd,force-compression=true -t my-app:squashed .
```
