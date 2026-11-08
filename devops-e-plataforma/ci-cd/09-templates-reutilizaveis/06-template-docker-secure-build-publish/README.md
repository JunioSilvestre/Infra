# 06 — Template Reutilizável de Build, Varredura e Publicação de Containers OCI

## 🏢 Cenário de Produção e Vida Real
Esteira centralizada para compilação e publicação de qualquer container corporativo.

### ⚠️ O Problema Real
Cada projeto cria seu próprio comando docker build, ignorando assinaturas digitais e SBOMs.

## 🚀 Arquitetura e Engenharia de CI/CD
Workflow unificado que executa Docker Buildx com cache remoto, varredura de vulnerabilidades com Trivy, assinatura criptográfica com Cosign e geração de SBOM CycloneDX anexada ao registry.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`docker-buildx, trivy, cosign, syft`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
# uses: my-corp/ci-templates/.github/workflows/docker-publish.yml@v1
```
