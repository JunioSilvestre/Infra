# 13 — Purgador Automatizado de Artefatos Órfãos no JFrog Artifactory via AQL

## 🏢 Cenário de Produção e Vida Real
Higienização de repositórios Artifactory para contenção de custos de cloud storage.

### ⚠️ O Problema Real
Milhares de builds de branches já finalizadas continuam consumindo espaço indefinidamente.

## 🚀 Arquitetura e Engenharia de CI/CD
Execução de consultas avançadas via Artifactory Query Language (AQL) identificando arquivos com base em metadados de branches finalizadas, exclusão segura e emissão de log de espaço recuperado.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`curl, jq, jfrog-cli`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
jf rt search --spec aql_query.json | jf rt delete --quiet
```
