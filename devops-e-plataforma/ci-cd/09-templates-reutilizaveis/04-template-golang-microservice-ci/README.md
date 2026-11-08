# 04 — Template Reutilizável de CI/CD para Microsserviços de Alta Performance em Go

## 🏢 Cenário de Produção e Vida Real
Esteira padronizada para compilação de binários estáticos mínimos e execução de testes concorrentes em Go.

### ⚠️ O Problema Real
Binários compilados com dependências dinâmicas que falham ao rodar em containers Distroless/Scratch.

## 🚀 Arquitetura e Engenharia de CI/CD
Template com golangci-lint configurado, testes com flag de detecção de corrida ('go test -race'), compilação com CGO_ENABLED=0 e flags de redução de tamanho de binário (-ldflags='-s -w').

## 🛠️ Ferramentas e Tecnologias Utilizadas
`go, golangci-lint, goreleaser`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
CGO_ENABLED=0 go build -ldflags="-s -w" -o app main.go
```
