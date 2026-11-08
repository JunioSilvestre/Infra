# 01-automacao — Engenharia de Automação Extrema em Bash & Linux

Trilha completa de 20 projetos arquitetados em **Bash puro (`.sh`)** para operações de infraestrutura crítica, automação corporativa do Tri-State (CT, MA, NY), SRE e internals do kernel Linux.

---

## 🏛️ Trilha 1: Automação Corporativa & APIs Públicas (CT, MA, NY)

| # | Projeto | Estado(s) | Ferramentas Chave | Escopo de Negócio |
|---|---|:---:|---|---|
| **01** | [`01-sec-edgar-filings-monitor-sh/`](./01-sec-edgar-filings-monitor-sh) | **NY / CT** | `curl`, `jq`, `trap` | Ingestão de relatórios 10-K, 10-Q e fatos 8-K para hedge funds de Wall Street/Greenwich. |
| **02** | [`02-nyc-open-data-dob-violations-sh/`](./02-nyc-open-data-dob-violations-sh) | **NY** | `curl`, `jq`, `column` | Auditoria predial e alertas de multas/Stop Work Orders no NYC Department of Buildings. |
| **03** | [`03-biotech-fda-clinical-watchdog-sh/`](./03-biotech-fda-clinical-watchdog-sh) | **MA** | `curl`, `diff`, `flock` | Vigilância de ensaios clínicos (Fases 1 a 3) e cartas de aprovação da FDA em Kendall Square. |
| **04** | [`04-insurance-weather-catastrophe-auditor-sh/`](./04-insurance-weather-catastrophe-auditor-sh) | **CT** | `curl`, `awk`, `xargs` | Validação de sinistros de tempestades contra registros climáticos oficiais da NOAA em Hartford. |
| **05** | [`05-uspto-patent-pipeline-downloader-sh/`](./05-uspto-patent-pipeline-downloader-sh) | **MA** | `curl`, `tar`, `pigz` | Download em lote, streaming e extração XML de patentes do USPTO para o polo MIT/Harvard. |
| **06** | [`06-tristate-payroll-tax-reconciliation-sh/`](./06-tristate-payroll-tax-reconciliation-sh) | **CT/MA/NY** | `awk`, `bc`, `cut` | Conciliação fiscal de folha interestadual (NY convenience rule, CT tax e MA PFML). |
| **07** | [`07-nyiso-isone-grid-telemetry-sh/`](./07-nyiso-isone-grid-telemetry-sh) | **NY / MA / CT** | `curl`, `awk`, `systemd` | Monitoramento contínuo de preços nodais de energia (LMP) e picos de demanda na NYISO e ISO-NE. |
| **08** | [`08-healthcare-hipaa-audit-sanitizer-sh/`](./08-healthcare-hipaa-audit-sanitizer-sh) | **NY / MA** | `sed`, `sha256sum`, `chattr` | Sanitização e pseudonimização de identificadores de saúde (PHI) em logs hospitalares. |
| **09** | [`09-port-nynj-customs-demurrage-alert-sh/`](./09-port-nynj-customs-demurrage-alert-sh) | **NY / NJ / CT** | `curl`, `date`, `awk` | Rastreio de liberação alfandegária e prevenção de multas de sobreestadia no Porto de NY/NJ. |
| **10** | [`10-municipal-property-tax-scraper-sh/`](./10-municipal-property-tax-scraper-sh) | **CT / NY** | `curl`, `grep -P`, `awk` | Coleta e auditoria de avaliações venais municipais (Grand List) para apelação de impostos. |

---

## ⚙️ Trilha 2: Engenharia de Infraestrutura, Segurança & Linux Internals

| # | Projeto | Domínio | Ferramentas Chave | Escopo Técnico |
|---|---|:---:|---|---|
| **11** | [`11-linux-kernel-hardening-cis-benchmarks-sh/`](./11-linux-kernel-hardening-cis-benchmarks-sh) | **Segurança** | `sysctl`, `find`, `auditctl` | Aplicação e auditoria automatizada de CIS Benchmarks para servidores Linux de missão crítica. |
| **12** | [`12-high-availability-failover-vip-keepalived-sh/`](./12-high-availability-failover-vip-keepalived-sh) | **Alta Disponibilidade** | `ip addr`, `arping`, `ss` | Gerenciamento de IP Virtual (VIP), healthcheck de camada 4/7 e failover ativo-passivo. |
| **13** | [`13-distributed-log-shipper-tail-aggregation-sh/`](./13-distributed-log-shipper-tail-aggregation-sh) | **Observabilidade** | `mkfifo`, `tail -F`, `flock` | Despachante leve de logs com named pipes e transmissão segura em stream via SSH. |
| **14** | [`14-automated-zfs-btrfs-snapshot-replication-sh/`](./14-automated-zfs-btrfs-snapshot-replication-sh) | **Storage / DR** | `zfs send/recv`, `pv` | Snapshots atômicos e replicação incremental remota ponto a ponto com política GFS. |
| **15** | [`15-pki-tls-cert-manager-acme-sh/`](./15-pki-tls-cert-manager-acme-sh) | **Criptografia** | `openssl`, `date`, `curl` | Inspeção x509, renovação automática ACME e recarga graciosa de proxies reversos. |
| **16** | [`16-zero-trust-ssh-bastion-audit-session-sh/`](./16-zero-trust-ssh-bastion-audit-session-sh) | **Zero Trust** | `script`, `logger`, `chattr` | Bastion Host interativo com gravação de sessão TTY, bloqueio de comandos e custódia de logs. |
| **17** | [`17-etcd-consul-service-mesh-watchdog-sh/`](./17-etcd-consul-service-mesh-watchdog-sh) | **Microsserviços** | `curl -N`, `jq`, `envsubst` | Watcher de chaves distribuídas via HTTP/2, renderização atômica e debouncing de reload. |
| **18** | [`18-bare-metal-provisioning-cloud-init-generator-sh/`](./18-bare-metal-provisioning-cloud-init-generator-sh) | **Provisionamento** | `sfdisk`, `lsblk`, `netplan` | Inicialização autônoma bare-metal PXE com geração dinâmica de manifestos cloud-init. |
| **19** | [`19-container-runtime-cgroups-namespace-isolate-sh/`](./19-container-runtime-cgroups-namespace-isolate-sh) | **Linux Internals** | `unshare`, `cgroups v2`, `overlay` | Criação de container do zero usando namespaces, limites de RAM/CPU e OverlayFS. |
| **20** | [`20-chaos-engineering-network-packet-loss-sh/`](./20-chaos-engineering-network-packet-loss-sh) | **Chaos & SRE** | `tc (netem)`, `iptables`, `trap` | Injeção controlada de latência e perda de pacotes com rollback de emergência via dead man's switch. |

---

## 📂 Subáreas de Automação Operacional Clássica
- [`arquivos-e-diretorios/`](./arquivos-e-diretorios) — Manipulação, compressão e gerenciamento seguro de arquivos.
- [`processos-e-servicos/`](./processos-e-servicos) — Monitoramento de processos, controle de sinais e daemons systemd.
- [`tarefas-agendadas/`](./tarefas-agendadas) — Agendamento via Cron e Systemd Timers.
- [`backup-e-restauracao/`](./backup-e-restauracao) — Cópias incrementais, validação sha256 e criptografia gpg.
