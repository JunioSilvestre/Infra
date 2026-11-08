# 07 — Chaveador de Tráfego Blue/Green com Verificação de Saúde e Zero Downtime

## 🏢 Cenário de Negócios e Produção Real
Atualização de versões maiores de aplicações web sem derrubar sessões ativas de usuários.

### ⚠️ O Problema Real
Substituição direta de instâncias derruba requisições HTTP em andamento e causa erros 500 para usuários finais.

## 🚀 Arquitetura e Engenharia em Bash
Deploy da versão Green em portas/sub-redes separadas, validação completa de testes de fumaça (smoke tests), alteração atômica do link simbólico da configuração do Nginx ou chamada à API do balanceador, e monitoramento de métricas de erro por 5 minutos antes de desligar o Blue.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`curl, nginx, ln, systemctl, jq`

## 📌 Exemplo de Execução CLI
```bash
./blue_green_switch.sh --current blue --target green --smoke-url 'http://127.0.0.1:8081/health'
```
