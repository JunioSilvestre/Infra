# 06 — Detector de MTU Path Black Hole e Ajuste de TCP MSS Clamping

## 🏢 Cenário de Negócios e Produção Real
Conexões VPN e túneis GRE onde pacotes grandes são descartados silenciosamente sem retorno de ICMP 'Fragmentation Needed'.

### ⚠️ O Problema Real
Pings pequenos funcionam, mas conexões SSH travam ao carregar telas ou transferências de arquivos com scp/rsync morrem.

## 🚀 Arquitetura e Engenharia em Bash
Varredura de Path MTU Discovery enviando pacotes com flag Don't Fragment (ping -M do -s tamanho), identificação do MTU máximo utilizável e aplicação de regra de MSS Clamping no firewall.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`ping, tracepath, nft, iptables`

## 📌 Exemplo de Execução CLI
```bash
./pmtu_discover.sh --target 10.200.0.1 --start-size 1500 --min-size 1200
```
