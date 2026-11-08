# 19 — Monitor de Sensores de Temperatura de CPU/Chassi e Throttling Térmico

## 🏢 Cenário de Negócios e Produção Real
Servidores em data centers com ar condicionado falho ou acúmulo de poeira nas ventoinhas.

### ⚠️ O Problema Real
CPUs superaquecem e ativam Throttling térmico reduzindo o clock de 3.5GHz para 800MHz, destruindo a performance da aplicação.

## 🚀 Arquitetura e Engenharia em Bash
Leitura de sensores via lm-sensors / 'sensors -j' e arquivos em /sys/class/thermal/, detecção de temperaturas acima do limiar crítico (Tctl/Tdie > 85°C), verificação de flags de throttling em /proc/cpuinfo e alerta de emergência.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`sensors, jq, /sys/class/thermal, awk`

## 📌 Exemplo de Execução CLI
```bash
./thermal_watchdog.sh --critical-temp 85 --alert-webhook '$SLACK_URL'
```
