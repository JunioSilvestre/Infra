# 09 — Sincronizador e Espelhador de Imagens de Containers entre Registries com Skopeo e Crane

## 🏢 Cenário de Produção e Vida Real
Migração ou replicação contínua de imagens públicas (Redis, PostgreSQL, Nginx) para o registry privado interno sem passar pelo daemon do Docker.

### ⚠️ O Problema Real
Dar 'docker pull' e 'docker push' consome disco local e é lento porque descompacta camadas desnecessariamente.

## 🚀 Arquitetura e Engenharia de CI/CD
Uso de Skopeo ou Crane para transferir imagens diretamente de registry para registry pela rede (sem usar o docker local), copiando manifests e digests de forma atômica.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`skopeo, crane, jq`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
skopeo copy docker://docker.io/library/redis:alpine docker://ghcr.io/my-org/redis:alpine
```
