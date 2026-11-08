# 15 — Provisionador e Destruidor de Ambientes Efêmeros de Preview para Pull Requests

## 🏢 Cenário de Negócios e Produção Real
Times de desenvolvimento que precisam testar o frontend e backend completos em uma URL temporária e isolada para cada Pull Request aberto.

### ⚠️ O Problema Real
Ambientes compartilhados de staging sofrem com conflito de branches e testes de diferentes desenvolvedores.

## 🚀 Arquitetura e Engenharia em Bash
Criação de namespace Kubernetes ou stack Docker Compose efêmera com nome baseado no número do PR ('pr-42-app.preview.net'), injeção de ingress e certificados TLS rápidos, e script acionado no fechamento do PR para destruição completa de recursos.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`kubectl, helm, sed, git, curl`

## 📌 Exemplo de Execução CLI
```bash
./preview_env.sh --action create --pr 42 --branch feat/checkout
```
