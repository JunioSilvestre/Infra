# 06 — Fábrica de Software Segura e Esteira de CI/CD para Ambientes Isolados (Air-Gapped)

## 🏢 Cenário de Produção e Vida Real
Esteira de CI/CD completa operando dentro de data centers governamentais ou industriais sem nenhuma conexão externa.

### ⚠️ O Problema Real
Impossibilidade de acessar o Docker Hub, npm registry ou GitHub público durante a compilação de software.

## 🚀 Arquitetura e Engenharia de CI/CD
Arquitetura com GitLab privado local, repositórios de espelho locais de pacotes (Nexus/Harbor), runners pré-configurados com imagens base homologadas e processo seguro de importação de dependências via mídia assinada.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`gitlab, nexus, harbor, gpg, skopeo`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
./airgap_pipeline_sync.sh --bundle-path /transfer/secure_bundle.tar.gz
```
