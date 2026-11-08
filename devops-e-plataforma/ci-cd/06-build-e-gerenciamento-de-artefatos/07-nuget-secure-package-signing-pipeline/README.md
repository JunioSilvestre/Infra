# 07 — Assinatura Criptográfica e Publicação de Pacotes .NET NuGet Corporativos

## 🏢 Cenário de Produção e Vida Real
Garantia de autenticidade para bibliotecas C# consumidas por múltiplos serviços internos.

### ⚠️ O Problema Real
Ataques de substituição de pacotes (Dependency Confusion) onde atacantes registram pacotes públicos com o mesmo nome interno.

## 🚀 Arquitetura e Engenharia de CI/CD
Compilação com dotnet pack, assinatura digital do pacote com certificado corporativo X.509 via 'dotnet nuget sign' e envio para o feed privado com verificação de autor.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`dotnet, openssl, nuget`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
dotnet nuget sign bin/Release/*.nupkg --certificate-path cert.pfx --timestamper http://timestamp.digicert.com
```
