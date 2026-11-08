# 20 — Quarentena e Validação Automatizada de Artefatos Não Confiáveis antes da Promoção

## 🏢 Cenário de Produção e Vida Real
Isolamento de builds originados de forks externos ou branches experimentais.

### ⚠️ O Problema Real
Artefatos experimentais entram diretamente no registry principal de produção.

## 🚀 Arquitetura e Engenharia de CI/CD
Publicação inicial em registry de quarentena isolado ('quarantine-registry.corp'), execução de varreduras completas de segurança e integridade, e promoção atômica para o registry oficial somente após todas as aprovações automáticas.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`skopeo, crane, jq, bash`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
./promote_artifact.sh --source quarantine/app:v1 --target prod/app:v1 --verify-clean
```
