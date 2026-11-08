# 13 — Monitor em Tempo Real de Ataques de ARP Spoofing e Poisoning

## 🏢 Cenário de Negócios e Produção Real
Proteção de redes locais de data center contra ataques de interceptação de tráfego de gateway.

### ⚠️ O Problema Real
Um nó comprometido na mesma VLAN pode se passar pelo gateway padrão e interceptar todo o tráfego não criptografado.

## 🚀 Arquitetura e Engenharia em Bash
Inspeção contínua da tabela ARP via 'ip neigh' e escuta de pacotes ARP com 'arpwatch' ou tcpdump buscando múltiplos endereços MAC para o mesmo IP de gateway, disparando alarme crítico imediato.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`ip neigh, arpwatch, tcpdump, mailx`

## 📌 Exemplo de Execução CLI
```bash
./arp_spoof_guard.sh --gateway-ip 10.0.0.1 --gateway-mac 'aa:bb:cc:dd:ee:ff'
```
