# 16 — Publicador de Releases no GitHub com Geração de Checksums SHA-256 e Assinatura GPG

## 🏢 Cenário de Produção e Vida Real
Publicação de binários executáveis para download público ou interno com garantia de não corrupção.

### ⚠️ O Problema Real
Downloads corrompidos por falhas de rede causam erros inexplicáveis para os usuários.

## 🚀 Arquitetura e Engenharia de CI/CD
Automação no CI que gera os binários compilados, calcula o arquivo SHA256SUMS, assina digitalmente com chave GPG corporativa (SHA256SUMS.sig) e anexa tudo na GitHub Release via CLI.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`sha256sum, gpg, gh-cli`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
sha256sum * > SHA256SUMS && gpg --detach-sign SHA256SUMS && gh release upload v1.0.0 SHA256SUMS*
```
