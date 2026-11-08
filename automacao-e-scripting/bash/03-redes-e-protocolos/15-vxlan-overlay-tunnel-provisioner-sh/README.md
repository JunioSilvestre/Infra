# 15 — Provisionador de Túneis Overlay VXLAN Ponto a Ponto e Multi-Host

## 🏢 Cenário de Negócios e Produção Real
Criação de rede Layer 2 virtualizada interconectando instâncias em diferentes data centers sem necessidade de hardware dedicado.

### ⚠️ O Problema Real
Aplicações legadas exigem broadcast L2 na mesma sub-rede, mas os servidores estão separados por roteamento L3.

## 🚀 Arquitetura e Engenharia em Bash
Criação de interface VXLAN com 'ip link add vxlan0 type vxlan id 42 dev eth0 dstport 4789 remote ...', adição da interface a uma bridge Linux (ip link set vxlan0 master br0) e ativação com MTU correto.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`ip, bridge, sysctl, logger`

## 📌 Exemplo de Execução CLI
```bash
./vxlan_setup.sh --vni 100 --local-ip 192.168.1.10 --remote-ip 192.168.2.20 --subnet 10.10.10.0/24
```
