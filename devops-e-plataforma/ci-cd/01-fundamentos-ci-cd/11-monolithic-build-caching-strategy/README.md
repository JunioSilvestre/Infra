# 11 — Estratégia Avançada de Cache Multi-Camada para Builds Pesados

## 🏢 Cenário de Produção e Vida Real
Aplicações corporativas .NET, Java e Node.js com centenas de megabytes de dependências.

### ⚠️ O Problema Real
Baixar dependências externas repetidamente em cada commit consome banda e adiciona minutos ao CI.

## 🚀 Arquitetura e Engenharia de CI/CD
Geração de chaves de cache baseadas no hash dos arquivos de lock (package-lock.json, Directory.Packages.props), cache fallback de branches e purga periódica.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`actions/cache, gitlab-cache, sha256sum`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
actions/cache@v4 com key: ${{ runner.os }}-node-${{ hashFiles('**/package-lock.json') }}
```
