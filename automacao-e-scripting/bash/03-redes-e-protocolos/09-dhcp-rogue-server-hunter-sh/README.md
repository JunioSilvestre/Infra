# 09 — Caçador de Servidores DHCP Não Autorizados (Rogue DHCP) na LAN

## 🏢 Cenário de Negócios e Produção Real
Redes corporativas onde alguém pluga um roteador doméstico por engano distribuindo IPs errados para as máquinas.

### ⚠️ O Problema Real
Estações recebem gateway falso, perdem conectividade ou sofrem ataque de Man-in-the-Middle (MitM).

## 🚀 Arquitetura e Engenharia em Bash
Envio programático de broadcast DHCP Discover via nmap / dhcping / tcpdump, captura de pacotes DHCP Offer na porta UDP 68, checagem do IP do servidor emissor contra lista de DHCPs legítimos autorizados.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`dhcping, nmap, tcpdump, awk, logger`

## 📌 Exemplo de Execução CLI
```bash
./rogue_dhcp_hunter.sh --interface eth0 --authorized-server 10.0.0.1
```
