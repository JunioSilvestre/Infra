# 15 — Auditor e Corretor de Drift de Relógio NTP e Timezone

## 🏢 Cenário de Negócios e Produção Real
Servidores de transações financeiras e logs distribuídos onde a sincronização de milissegundos é mandatória.

### ⚠️ O Problema Real
Deriva temporal (clock drift) quebra validação de tokens JWT, replicação de bancos e correlação de logs de segurança.

## 🚀 Arquitetura e Engenharia em Bash
Verificação via chronyc tracking / timedatectl, detecção de desvio superior a 50ms, ressincronização forçada ou ajuste de servidores upstream.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`timedatectl, chronyc, ntpq, date`

## 📌 Exemplo de Execução CLI
```bash
./time_sync_audit.sh --max-offset-ms 50 --fix
```
