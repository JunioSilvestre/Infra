# 09 — Coletor Leve de Tráfego e Erros de Interfaces de Switches via SNMP

## 🏢 Cenário de Negócios e Produção Real
Monitoramento de portas de rede física em switches de data center (Cisco, Juniper, Arista).

### ⚠️ O Problema Real
Portas com cabos defeituosos sofrem perda de pacotes e erros de CRC sem acusar link down.

## 🚀 Arquitetura e Engenharia em Bash
Consultas SNMP v2c/v3 via snmpbulkwalk/snmpget extraindo ifInOctets, ifOutOctets e ifInErrors, cálculo de taxa de utilização e alerta se a taxa de erros de CRC ultrapassar 0.1%.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`snmpbulkwalk, snmpget, awk, bc`

## 📌 Exemplo de Execução CLI
```bash
./snmp_switch_monitor.sh --host 10.0.0.254 --community public --max-errors-pct 0.1
```
