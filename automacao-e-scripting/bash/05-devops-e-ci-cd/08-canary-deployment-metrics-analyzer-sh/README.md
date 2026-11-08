# 08 — Orquestrador de Deploy Canário com Análise Automatizada de Taxa de Erro

## 🏢 Cenário de Negócios e Produção Real
Liberação gradual de novas versões (10%, 25%, 50%, 100%) para um subconjunto de usuários reais.

### ⚠️ O Problema Real
Bugs sutis que passam pelos testes de CI só aparecem sob tráfego real de produção.

## 🚀 Arquitetura e Engenharia em Bash
Ajuste de pesos de tráfego no proxy reverso, coleta contínua da taxa de erros HTTP 5xx e latência p99 da versão canário vs versão estável via logs do Nginx, e aprovação do próximo estágio ou rollback imediato se a taxa de erro subir mais de 1%.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`awk, curl, nginx, date, bc`

## 📌 Exemplo de Execução CLI
```bash
./canary_controller.sh --service order-service --initial-weight 10 --step 25 --interval 300
```
