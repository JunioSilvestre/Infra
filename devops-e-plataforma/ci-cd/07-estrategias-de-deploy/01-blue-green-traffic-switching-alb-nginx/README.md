# 01 — Chaveador de Tráfego Blue/Green com AWS ALB e Nginx sem Queda de Conexão

## 🏢 Cenário de Produção e Vida Real
Deploy de versões com quebra de compatibilidade de banco de dados ou grandes mudanças de arquitetura.

### ⚠️ O Problema Real
Substituição imediata de instâncias causa falha em conexões WebSocket ativas e transações em andamento.

## 🚀 Arquitetura e Engenharia de CI/CD
Deploy do ambiente Green paralelo, execução de testes de fumaça, alteração ponderada de pesos (100% Blue -> 100% Green) no balanceador via API e monitoramento contínuo de status 5xx.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`aws-cli, nginx, jq, curl`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
./blue_green_alb.sh --target-group-blue '$BLUE_ARN' --target-group-green '$GREEN_ARN' --switch
```
