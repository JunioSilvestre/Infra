# 13 — Publicador Automatizado de Pacotes Corporativos no GitLab Package Registry

## 🏢 Cenário de Produção e Vida Real
Distribuição interna de bibliotecas compartilhadas (.NET NuGet, pacotes npm, Python wheels) dentro da infraestrutura privada do GitLab.

### ⚠️ O Problema Real
Hospedar pacotes privados em serviços públicos externos gera custos de licença e risco de vazamento de código.

## 🚀 Arquitetura e Engenharia de CI/CD
Configuração do pipeline com autenticação via CI_JOB_TOKEN, empacotamento do artefato e publicação direta no Package Registry nativo do projeto.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`dotnet nuget, npm, twine, gitlab-registry`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
dotnet nuget push bin/Release/*.nupkg --source "${CI_API_V4_URL}/projects/${CI_PROJECT_ID}/packages/nuget/index.json"
```
