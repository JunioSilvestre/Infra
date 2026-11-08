# Roteamento de Alta Performance com Docker macvlan para Telecomunicações em CT

## 1. Cenário de Produção Real
Gateway de telefonia VoIP corporativa requer endereços IP dedicados e roteáveis diretamente na subnet de produção sem sobrecarga de NAT.

## 2. O Problema Real
Evitar iptables overhead e conexões conntrack saturadas por milhões de pacotes SIP/RTP por segundo.

## 3. Arquitetura e Engenharia da Solução
Criação de rede Docker do tipo macvlan em modo bridge atrelada à interface física 10GbE com alocação de IPs via DHCP/IPAM estático.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Docker macvlan, ip link, ip route, tcpdump, Wireshark
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
docker network create -d macvlan --subnet=192.168.10.0/24 --gateway=192.168.10.1 -o parent=eth1.100 vlan100-net
```
