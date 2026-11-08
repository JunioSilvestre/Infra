# 08 — Monitor de Flapping de Rotas BGP e Alertas de Estabilidade de ASN

## 🏢 Cenário de Negócios e Produção Real
Empresas com número de sistema autônomo próprio (ASN) que sofrem com instabilidade em provedores de trânsito.

### ⚠️ O Problema Real
Instabilidades de rota (Route Flapping) causam perdas aleatórias de pacotes globais por penalidades BGP Dampening.

## 🚀 Arquitetura e Engenharia em Bash
Consulta automatizada a Looking Glasses públicos via telnet/API REST ou birdc/vtysh local, contagem de anúncios/retiradas de prefixos por minuto e alerta de flapping.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`curl, jq, birdc, vtysh, awk`

## 📌 Exemplo de Execução CLI
```bash
./bgp_flap_monitor.sh --prefix 203.0.113.0/24 --interval 30 --alert-threshold 5
```
