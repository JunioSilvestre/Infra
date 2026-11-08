# 03 — Aceleração Extrema de Builds Docker com Mounts de Cache no BuildKit

## 🏢 Cenário de Produção e Vida Real
Redução do tempo de compilação em linguagens como Go, Rust e C# que compilam código incrementalmente.

### ⚠️ O Problema Real
Cada build recompila todas as dependências do zero porque a camada de cache do Docker é invalidada se um arquivo mudar.

## 🚀 Arquitetura e Engenharia de CI/CD
Uso de diretivas avançadas do BuildKit ('RUN --mount=type=cache,target=/root/.cache/go-build') preservando caches de compilação e gerenciadores de pacotes entre builds sucessivos.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`docker-buildkit, buildx`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
DOCKER_BUILDKIT=1 docker build --progress=plain .
```
