# Geração e Publicação de Software Bill of Materials (SBOM) no Registry OCI

## 1. Cenário de Produção Real
Exigência federal (Executive Order dos EUA) para empresas de tecnologia detalharem todas as dependências open-source em seus softwares.

## 2. O Problema Real
Rastrear exatamente quais bibliotecas (Node, Python, Go) estão embutidas dentro de cada container rodando em produção.

## 3. Arquitetura e Engenharia da Solução
Execução do Syft gerando SBOM no formato SPDX/CycloneDX e upload do arquivo como artefato OCI anexado à imagem de container.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Syft, CycloneDX, SPDX, Cosign Attach SBOM, OCI Artifacts
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
syft registry.corp.com/api:v1.0 -o cyclonedx-json=sbom.json && cosign attach sbom --sbom sbom.json registry.corp.com/api:v1.0
```
