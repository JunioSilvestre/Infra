# 16 — Inspetor e Auditor de Metadados de Tráfego de VPN WireGuard

## 🏢 Cenário de Negócios e Produção Real
Monitoramento de conformidade em túneis corporativos para assegurar que apenas protocolos autorizados trafeguem na VPN.

### ⚠️ O Problema Real
Usuários autenticados na VPN podem utilizar o túnel para torrents ou mineradores de criptomoeda.

## 🚀 Arquitetura e Engenharia em Bash
Inspeção de pacotes na interface wg0 via tcpdump filtrando por cabeçalhos, extração de estatísticas de fluxo com tshark/awk e alerta se tráfego de protocolos não autorizados for detectado.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`tcpdump, tshark, awk, sort, uniq`

## 📌 Exemplo de Execução CLI
```bash
./vpn_traffic_audit.sh --interface wg0 --disallowed-ports '6881-6889,3333'
```
