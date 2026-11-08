# 05 — Geração e Atestado de Software Bill of Materials (SBOM) com Syft e CycloneDX

## 🏢 Cenário de Produção e Vida Real
Conformidade com a Ordem Executiva dos EUA e auditorias de clientes corporativos exigindo a lista completa de componentes do software.

### ⚠️ O Problema Real
Falta de visibilidade sobre quais bibliotecas e licenças estão embutidas dentro de um binário ou container.

## 🚀 Arquitetura e Engenharia de CI/CD
Geração do SBOM nos formatos CycloneDX e SPDX via Syft, associação do SBOM à imagem de container via Cosign attest e arquivamento para auditoria.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`syft, cosign, cyclonedx-cli`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
syft packages ghcr.io/my-org/my-app:latest -o cyclonedx-json=sbom.json
```
