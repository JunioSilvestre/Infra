# 12 — Health Probe Ativo e Circuit Breaker para Upstreams de Proxy Reverso

## 🏢 Cenário de Negócios e Produção Real
Roteamento de requisições de borda onde instâncias de backend travam e precisam ser removidas do pool antes de gerarem erros 502 Bad Gateway para os clientes.

### ⚠️ O Problema Real
Proxies sem verificação ativa continuam enviando tráfego para instâncias zumbis.

## 🚀 Arquitetura e Engenharia em Bash
Script de probe em alta frequência com curl, contagem de falhas consecutivas, geração de arquivo de configuração de upstream atualizado e envio de reload atômico para o Nginx/HAProxy.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`curl, sed, systemctl, flock`

## 📌 Exemplo de Execução CLI
```bash
./circuit_breaker.sh --target http://10.0.2.10:8080/health --fail-limit 3 --action-remove
```
