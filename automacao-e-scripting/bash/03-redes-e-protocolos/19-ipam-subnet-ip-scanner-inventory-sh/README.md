# 19 — Scanner e Inventariador de Sub-redes IP para Gestão de IPAM Local

## 🏢 Cenário de Negócios e Produção Real
Documentação e inventário de ativos em redes corporativas com endereçamento estático.

### ⚠️ O Problema Real
Falta de controle de IPs livres causa conflitos de IP manual ao provisionar novos servidores.

## 🚀 Arquitetura e Engenharia em Bash
Varredura rápida e sem ruído via fping ou nmap (-sn), resolução reversa de nomes DNS (dig -x), identificação de endereços MAC e exportação de inventário em JSON/CSV categorizado.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`fping, nmap, dig, ip neigh, jq`

## 📌 Exemplo de Execução CLI
```bash
./ipam_scan.sh --subnet 10.0.50.0/24 --out /var/www/html/ipam.json
```
