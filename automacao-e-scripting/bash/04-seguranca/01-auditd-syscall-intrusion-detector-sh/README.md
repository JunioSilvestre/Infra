# 01 — Detector de Intrusão Baseado em Syscalls com auditd e ausearch

## 🏢 Cenário de Negócios e Produção Real
Ambientes de produção com exigência de monitoramento de chamadas de sistema críticas (execve, ptrace, connect) por exigência de auditoria SOC 2.

### ⚠️ O Problema Real
Invasores usam exploits de escalonamento de privilégios ou injetam código na memória de processos sem alterar arquivos em disco.

## 🚀 Arquitetura e Engenharia em Bash
Criação de regras em /etc/audit/rules.d/ para monitorar chamadas de sistema suspeitas, parsing contínuo com ausearch/aureport e disparo imediato de alerta com contexto de UID, PID e comando.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`auditctl, ausearch, aureport, awk, logger`

## 📌 Exemplo de Execução CLI
```bash
./auditd_watchdog.sh --monitor-rules /etc/security/audit.rules --alert-email secops@empresa.com
```
