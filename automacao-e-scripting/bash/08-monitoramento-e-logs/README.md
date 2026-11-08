# 08-monitoramento-e-logs — Monitoramento, Métricas, Logs e Observabilidade

Projetos práticos em Bash para coleta de métricas, profiling de latência de I/O, parsing de logs Nginx/Syslog, detecção de OOM-Killer e alertas.

---

## 🏛️ Trilha de Projetos Práticos de Nível Sênior (20 Projetos Reais)

| # | Projeto | Título / Foco de Negócio | Ferramentas Nativas Chave |
|---|---|---|---|
| **01** | [`01-prometheus-node-exporter-textfile-collector-sh/`](./01-prometheus-node-exporter-textfile-collector-sh) | **Coletor Customizado de Métricas de Negócio e Sistema para Prometheus Node Exporter** | `awk, sed, date, mv` |
| **02** | [`02-disk-io-latency-iotop-iostat-profiler-sh/`](./02-disk-io-latency-iotop-iostat-profiler-sh) | **Profiler de Latência de I/O de Disco em Tempo Real com iostat e iotop** | `iostat, iotop, awk, sort, date` |
| **03** | [`03-journalctl-high-priority-error-notifier-sh/`](./03-journalctl-high-priority-error-notifier-sh) | **Notificador em Tempo Real de Erros Críticos do Systemd com journalctl** | `journalctl, jq, awk, curl` |
| **04** | [`04-nginx-access-log-slow-requests-p99-sh/`](./04-nginx-access-log-slow-requests-p99-sh) | **Analisador em Tempo Real de Requisições Lentas e Percentil p99 em Logs Nginx** | `tail, awk, sort, column, bc` |
| **05** | [`05-tcp-connection-state-time-wait-tracker-sh/`](./05-tcp-connection-state-time-wait-tracker-sh) | **Rastreador de Estados de Conexão TCP e Esgotamento de TIME_WAIT com ss** | `ss, awk, sort, uniq, logger` |
| **06** | [`06-memory-leak-rss-growth-detector-sh/`](./06-memory-leak-rss-growth-detector-sh) | **Detector de Vazamento de Memória (Memory Leak) com Rastreamento de Crescimento de RSS** | `ps, awk, /proc, date, bc` |
| **07** | [`07-ssl-expiry-multi-domain-blackbox-sh/`](./07-ssl-expiry-multi-domain-blackbox-sh) | **Sondagem Blackbox de Expiração de Certificados SSL/TLS em Múltiplos Domínios** | `openssl, date, awk, column, mailx` |
| **08** | [`08-logrotate-custom-audit-compressor-sh/`](./08-logrotate-custom-audit-compressor-sh) | **Auditor de Políticas de Rotação de Logs e Compactação em Lote com pigz** | `logrotate, find, pigz, du, df` |
| **09** | [`09-snmp-network-switch-interface-collector-sh/`](./09-snmp-network-switch-interface-collector-sh) | **Coletor Leve de Tráfego e Erros de Interfaces de Switches via SNMP** | `snmpbulkwalk, snmpget, awk, bc` |
| **10** | [`10-uptime-kuma-synthetic-ping-pusher-sh/`](./10-uptime-kuma-synthetic-ping-pusher-sh) | **Pusher de Heartbeat e Monitoramento Sintético para Uptime Kuma / Healthchecks.io** | `curl, date, logger` |
| **11** | [`11-file-descriptor-limit-leak-watchdog-sh/`](./11-file-descriptor-limit-leak-watchdog-sh) | **Watchdog e Alerta de Consumo Crítico da Tabela Global de File Descriptors** | `cat, /proc, awk, lsof, sort` |
| **12** | [`12-cpu-steal-time-noisy-neighbor-detector-sh/`](./12-cpu-steal-time-noisy-neighbor-detector-sh) | **Detector de CPU Steal Time e Efeito 'Noisy Neighbor' em Máquinas Virtuais Cloud** | `mpstat, /proc/stat, awk, date` |
| **13** | [`13-oom-killer-kernel-event-alerter-sh/`](./13-oom-killer-kernel-event-alerter-sh) | **Coletor e Alerta Instantâneo de Eventos de OOM-Killer no Kernel** | `dmesg, journalctl, grep, awk, curl` |
| **14** | [`14-vector-fluentbit-lightweight-log-pipe-sh/`](./14-vector-fluentbit-lightweight-log-pipe-sh) | **Pipeline Leve de Coleta e Encaminhamento de Logs com Fluent Bit / Vector** | `fluent-bit, vector, systemctl, curl` |
| **15** | [`15-systemd-failed-units-auto-healer-sh/`](./15-systemd-failed-units-auto-healer-sh) | **Auto-Cura e Limpeza de Unidades em Estado Failed no Systemd** | `systemctl, awk, logger` |
| **16** | [`16-dns-query-latency-bind-resolver-sh/`](./16-dns-query-latency-bind-resolver-sh) | **Testador e Medidor de Latência de Resolução DNS com dig e mtr** | `dig, mtr, awk, sort` |
| **17** | [`17-smartmontools-nvme-hdd-health-collector-sh/`](./17-smartmontools-nvme-hdd-health-collector-sh) | **Coletor e Preditor de Falhas em Discos NVMe e HDDs com smartctl** | `smartctl, jq, awk, mailx` |
| **18** | [`18-coroot-ebpf-agent-install-watchdog-sh/`](./18-coroot-ebpf-agent-install-watchdog-sh) | **Watchdog e Verificador de Telemetria eBPF no Kernel Linux** | `bpftool, dmesg, grep, mount` |
| **19** | [`19-hardware-sensor-temperature-throttling-sh/`](./19-hardware-sensor-temperature-throttling-sh) | **Monitor de Sensores de Temperatura de CPU/Chassi e Throttling Térmico** | `sensors, jq, /sys/class/thermal, awk` |
| **20** | [`20-synthetic-user-journey-curl-timing-sh/`](./20-synthetic-user-journey-curl-timing-sh) | **Monitor Sintético de Jornada de Usuário Ponta a Ponta com curl Timing** | `curl, jq, grep, date, awk` |
