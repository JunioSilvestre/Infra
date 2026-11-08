# 08 — Estratégia de Cache Distribuído com Fallback e Armazenamento no AWS S3

## 🏢 Cenário de Produção e Vida Real
Aceleração de builds em múltiplos runners que rodam em máquinas físicas ou zonas diferentes.

### ⚠️ O Problema Real
Caches locais em disco não são compartilhados entre runners diferentes, anulando o benefício do cache.

## 🚀 Arquitetura e Engenharia de CI/CD
Configuração do executor do GitLab Runner apontando para bucket S3 com criptografia KMS, usando 'cache:key:files' e fallback de chave de branch principal para branches novas.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`gitlab-runner, aws-s3, yaml`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
# config.toml: [runners.cache] Type = 's3' ServerAddress = 's3.amazonaws.com'
```
