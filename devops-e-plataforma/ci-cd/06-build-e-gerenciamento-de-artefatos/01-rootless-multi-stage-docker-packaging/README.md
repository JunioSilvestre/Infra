# 01 — Construção de Imagens Docker Multi-Stage Ultraleves e Não-Privilegiadas (Rootless)

## 🏢 Cenário de Produção e Vida Real
Empacotamento de aplicações .NET, Go e Node.js em imagens mínimas (Distroless / Alpine) sem privilégios de root.

### ⚠️ O Problema Real
Containers que rodam como root e contêm ferramentas desnecessárias (bash, curl, apt) aumentando a superfície de ataque.

## 🚀 Arquitetura e Engenharia de CI/CD
Dockerfile multi-stage: estágio de compilação com SDK completo e estágio final 'scratch' ou 'distroless', cópia estrita dos binários, definição de 'USER 65532:65532' e zero ferramentas de debug.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`docker, buildx, distroless`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
docker buildx build --target runtime -t my-app:distroless .
```
