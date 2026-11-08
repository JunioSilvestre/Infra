# 03 — Rate Limiter Dinâmico Anti-DDoS e Port Scan com nftables

## 🏢 Cenário de Negócios e Produção Real
Proteção de servidores de borda expostos a ataques de força bruta SSH e inundações SYN.

### ⚠️ O Problema Real
Firewalls estáticos não bloqueiam IPs que disparam centenas de conexões por segundo até derrubar o kernel.

## 🚀 Arquitetura e Engenharia em Bash
Criação de conjuntos (sets) dinâmicos de timeout no nftables, inserção e remoção automática de IPs atacantes com log categorizado em rate limit de pacotes.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`nft, ss, iptables, logger`

## 📌 Exemplo de Execução CLI
```bash
./nft_ddos_guard.sh --max-syn-per-sec 50 --block-duration 3600 --whitelist /etc/trusted_ips.txt
```
