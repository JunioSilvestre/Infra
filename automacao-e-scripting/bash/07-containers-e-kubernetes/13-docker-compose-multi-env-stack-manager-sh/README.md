# 13 — Orquestrador de Stacks Docker Compose Multi-Ambiente com Verificação de Sanidade

## 🏢 Cenário de Negócios e Produção Real
Gestão de servidores de staging e ambientes locais com dezenas de microsserviços declarados em múltiplos arquivos compose.

### ⚠️ O Problema Real
Conflitos de portas e variáveis de ambiente divergentes entre desenvolvimento e produção.

## 🚀 Arquitetura e Engenharia em Bash
Fusão modular de arquivos compose ('docker compose -f base.yml -f prod.yml config'), validação de sintaxe prévia, subida controlada com '--wait' e verificação automática de status de saúde dos containers (healthy vs starting).

## 🛠️ Ferramentas Nativas Linux Utilizadas
`docker compose, jq, envsubst`

## 📌 Exemplo de Execução CLI
```bash
./stack_manager.sh --env production --files 'base,prod,monitoring' --action up --wait
```
