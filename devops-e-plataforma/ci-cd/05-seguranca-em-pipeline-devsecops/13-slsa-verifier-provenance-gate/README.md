# 13 — Validador e Portão de Proveniência SLSA para Binários e Imagens de Produção

## 🏢 Cenário de Produção e Vida Real
Servidores de produção e clusters Kubernetes que verificam o atestado de integridade antes de autorizar o deploy.

### ⚠️ O Problema Real
Falta de comprovação de que o binário que está rodando em produção foi gerado pelo pipeline aprovado da empresa.

## 🚀 Arquitetura e Engenharia de CI/CD
Execução da ferramenta 'slsa-verifier' validando o atestado criptográfico contra o repositório fonte oficial e a identidade do workflow antes de iniciar o processo de atualização.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`slsa-verifier, cosign`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
slsa-verifier verify-artifact my-app.tar.gz --provenance-path provenance.json --source-uri github.com/my-org/my-app
```
