# 01 — Template Reutilizável de CI/CD para Aplicações e APIs em .NET 10

## 🏢 Cenário de Produção e Vida Real
Padronização de esteiras para dezenas de microsserviços em .NET 10 na organização.

### ⚠️ O Problema Real
Pipelines que usam versões divergentes do .NET SDK, esquecem linters (dotnet format) ou não geram relatórios de teste.

## 🚀 Arquitetura e Engenharia de CI/CD
Workflow reutilizável cobrindo: setup do .NET 10, restore com cache de pacotes, compilação com warnings como erros (TreatWarningsAsErrors), execução de testes com logger TRX e cobertura Cobertura.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`dotnet-cli, actions/setup-dotnet, github-actions`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
dotnet test --logger trx --collect:"XPlat Code Coverage"
```
