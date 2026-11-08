# 19 — Validador e Verificador de Consistência de Grafos de Dependência SPDX e CycloneDX

## 🏢 Cenário de Produção e Vida Real
Auditoria de integridade dos arquivos SBOM gerados nos builds.

### ⚠️ O Problema Real
Arquivos SBOM gerados com schemas corrompidos ou faltando metadados de licença e fornecedor.

## 🚀 Arquitetura e Engenharia de CI/CD
Validação sintática e semântica com o CLI oficial do CycloneDX ('cyclonedx-cli validate'), conferindo a completude de hashes criptográficos e dados de proveniência de cada componente.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`cyclonedx-cli, jq`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
cyclonedx-cli validate --input-file sbom.json --spec-version 1.5
```
