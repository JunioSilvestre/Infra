# 04 — Failover de Roteamento Multi-WAN com Tabelas de Roteamento Avançadas

## 🏢 Cenário de Negócios e Produção Real
Servidores com duas interfaces de uplink de internet (link primário de fibra e contingência via rádio/4G).

### ⚠️ O Problema Real
Queda silenciosa do link primário (interface fica UP mas sem navegação externa) isola o servidor.

## 🚀 Arquitetura e Engenharia em Bash
Probe contínuo via múltiplos gateways remotos (ping -I eth0 e ping -I eth1), alternância atômica da rota padrão ('ip route replace default scope global via ...') e esvaziamento da tabela de rotas em cache.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`ip, ping, arping, logger`

## 📌 Exemplo de Execução CLI
```bash
./multi_wan_failover.sh --primary eth0 --gateway-primary 192.168.1.1 --backup eth1
```
