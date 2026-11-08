# 16 — Modelador e Policer de Tráfego de Rede com tc (Traffic Control) e HTB

## 🏢 Cenário de Negócios e Produção Real
Garantia de qualidade de serviço (QoS) em servidores com links compartilhados entre tráfego web prioritário e backups volumosos.

### ⚠️ O Problema Real
Backups pesados saturam a interface de rede e causam lentidão extrema para os usuários do sistema web.

## 🚀 Arquitetura e Engenharia em Bash
Configuração de qdiscs e classes HTB via 'tc qdisc add dev eth0 root handle 1: htb', classificação de pacotes por porta e IP com 'tc filter', garantindo banda mínima reservada para tráfego web e teto máximo para backups.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`tc, ip, iptables, awk`

## 📌 Exemplo de Execução CLI
```bash
./traffic_shaper.sh --interface eth0 --web-guaranteed 80mbit --backup-limit 15mbit
```
