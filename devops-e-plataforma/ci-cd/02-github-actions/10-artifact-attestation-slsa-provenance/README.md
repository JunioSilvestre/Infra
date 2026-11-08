# 10 — Assinatura Criptográfica de Artefatos e Proveniência SLSA no GitHub Actions

## 🏢 Cenário de Produção e Vida Real
Garantia de segurança da cadeia de suprimentos de software (Supply Chain Security) em conformidade com o padrão SLSA Nível 3.

### ⚠️ O Problema Real
Binários compilados podem ser adulterados entre a esteira de build e o servidor de produção.

## 🚀 Arquitetura e Engenharia de CI/CD
Geração de atestados de integridade criptográficos usando a ferramenta nativa 'actions/attest-build-provenance', vinculando o digest do artefato ao commit, workflow e ator responsável.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`actions/attest-build-provenance, gh-attestation`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
gh attestation verify my-binary --owner my-org
```
