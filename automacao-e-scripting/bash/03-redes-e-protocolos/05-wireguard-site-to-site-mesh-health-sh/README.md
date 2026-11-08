# 05 — Monitor e Auto-Recuperação de Túneis VPN WireGuard Site-to-Site

## 🏢 Cenário de Negócios e Produção Real
Interconexão segura de filiais e nuvens privadas via WireGuard.

### ⚠️ O Problema Real
Handshakes expirados por troca de IP dinâmico em pontas NAT deixam o túnel silenciosamente inativo.

## 🚀 Arquitetura e Engenharia em Bash
Inspeção do último handshake com 'wg show all latest-handshakes', detecção de inatividade superior a 180 segundos, reinício do serviço de interface ou re-resolução de endpoint DNS com wg syncconf.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`wg, ip, systemctl, date`

## 📌 Exemplo de Execução CLI
```bash
./wg_health.sh --interface wg0 --max-handshake-age 180 --auto-heal
```
