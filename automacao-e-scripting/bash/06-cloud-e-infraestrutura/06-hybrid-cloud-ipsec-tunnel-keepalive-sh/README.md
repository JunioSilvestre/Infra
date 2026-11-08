# 06 — Monitor e Re-estabelecedor de Túneis IPsec VPN Nuvem Híbrida (On-Premise / Cloud)

## 🏢 Cenário de Negócios e Produção Real
Interconexão de data center local corporativo com VPC da AWS/Azure via StrongSwan ou Libreswan.

### ⚠️ O Problema Real
Quedas transitórias na internet desfazem o túnel IPsec Fase 2 e o tráfego corporativo para de fluir.

## 🚀 Arquitetura e Engenharia em Bash
Monitoramento com ping contínuo de ponta a ponta na rede privada, verificação de Security Associations (ipsec status / strongswan status), reinício suave do daemon IPsec e disparo de re-autenticação IKE.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`ipsec, strongswan, ping, systemctl, logger`

## 📌 Exemplo de Execução CLI
```bash
./ipsec_watchdog.sh --conn-name aws-vpn --peer 10.100.0.1 --check-interval 15
```
