# 14 — Atualizador de DNS Dinâmico (DDNS) com Autenticação de API para Cloudflare e AWS Route53

## 🏢 Cenário de Negócios e Produção Real
Servidores de backup ou túneis VPN operando sobre links de internet com IP público dinâmico.

### ⚠️ O Problema Real
A troca de IP pelo provedor quebra conexões de entrada até alguém atualizar manualmente o DNS.

## 🚀 Arquitetura e Engenharia em Bash
Detecção de IP público externo via serviços seguros (icanhazip, ipify), comparação com o IP registrado na zona DNS via dig, atualização imediata via API REST da Cloudflare ou AWS CLI com TTL curto (60s).

## 🛠️ Ferramentas Nativas Linux Utilizadas
`curl, jq, dig, date`

## 📌 Exemplo de Execução CLI
```bash
./ddns_sync.sh --provider cloudflare --zone-id 'abc123xyz' --record vpn.jcscode.com
```
