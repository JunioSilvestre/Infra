# 20 — Gravador de Caixa-Preta (Flight Recorder) de Incidentes para Ambientes de Missão Crítica

## 🏢 Cenário de Negócios e Produção Real
Investigação forense pós-morte (Post-Mortem) de indisponibilidades inexplicadas em servidores de produção.

### ⚠️ O Problema Real
Quando um servidor trava completamente ou é reiniciado às pressas, o estado volátil da memória e das conexões no exato momento da falha é perdido para sempre.

## 🚀 Arquitetura e Engenharia em Bash
Daemon leve em Bash que monitora sinais vitais; quando uma anomalia severa é detectada (ou quando um sinal de alarme é recebido), ele congela o momento capturando em segundos: tabela completa de processos, conexões TCP detalhadas, estado do kernel /proc, estatísticas de I/O, últimas linhas de syslog e grava tudo em um arquivo de caixa-preta tar.gz imutável.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`ps, ss, /proc, dmesg, tar, chattr, sync`

## 📌 Exemplo de Execução CLI
```bash
./blackbox_recorder.sh --daemon --trigger-mem-pct 95 --trigger-load 50 --out /var/crash_dossier
```
