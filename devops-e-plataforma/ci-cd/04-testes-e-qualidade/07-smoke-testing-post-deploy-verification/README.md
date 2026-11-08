# 07 — Testes de Fumaça (Smoke Tests) Pós-Deploy com Rollback Automático

## 🏢 Cenário de Produção e Vida Real
Validação instantânea de que o deploy recente subiu corretamente e consegue conectar ao banco e filas.

### ⚠️ O Problema Real
Deploy finaliza com sucesso no CI, mas a aplicação entra em falha silenciosa por falta de uma variável de ambiente.

## 🚀 Arquitetura e Engenharia de CI/CD
Execução imediata de chamadas HTTP contra rotas críticas (/health, /api/ready, /api/auth/ping), validação de payloads em menos de 30 segundos e disparo automático de rollback se houver erro 5xx.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`curl, jq, newman, bash`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
./run_smoke_tests.sh --target 'https://staging.corp.com' --timeout 30
```
