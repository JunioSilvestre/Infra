# 02-linux-administracao — Linux Administração de Sistemas

Projetos avançados para gestão de servidores, ciclo de vida de daemons, atualizações atômicas e políticas de sistema.

---

## 🏛️ Trilha de Projetos Práticos de Nível Sênior (20 Projetos Reais)

| # | Projeto | Título / Foco de Negócio | Ferramentas Nativas Chave |
|---|---|---|---|
| **01** | [`01-unattended-security-patching-reboot-window-sh/`](./01-unattended-security-patching-reboot-window-sh) | **Janela de Atualização Automática de Segurança com Reboot Agendado** | `apt-get, needrestart, systemctl, shutdown, logger, mailx` |
| **02** | [`02-user-onboarding-offboarding-ssh-revocation-sh/`](./02-user-onboarding-offboarding-ssh-revocation-sh) | **Automação de Onboarding e Offboarding com Revogação Instantânea de Chaves SSH** | `useradd, usermod, pkill, chage, shred, logger` |
| **03** | [`03-systemd-service-watchdog-auto-restart-sh/`](./03-systemd-service-watchdog-auto-restart-sh) | **Watchdog e Auto-Cura de Serviços Críticos do Systemd** | `systemctl, journalctl, awk, mailx, curl` |
| **04** | [`04-systemd-timer-schedule-manager-sh/`](./04-systemd-timer-schedule-manager-sh) | **Gerenciador e Auditor de Agendamentos Systemd Timers** | `systemctl, systemd-analyze, envsubst, sed` |
| **05** | [`05-posix-acl-directory-inheritance-enforcer-sh/`](./05-posix-acl-directory-inheritance-enforcer-sh) | **Auditor e Enforcer de Herança de Permissões POSIX ACL** | `setfacl, getfacl, find, xargs` |
| **06** | [`06-zombie-orphan-process-terminator-sh/`](./06-zombie-orphan-process-terminator-sh) | **Detector e Exterminador de Processos Zumbis e Órfãos** | `ps, awk, kill, /proc, sysctl` |
| **07** | [`07-swap-memory-pressure-triage-sh/`](./07-swap-memory-pressure-triage-sh) | **Triagem e Alívio de Pressão de Memória e Swap Thrashing** | `vmstat, free, /proc/pressure, awk, sort` |
| **08** | [`08-kernel-module-blacklist-inventory-sh/`](./08-kernel-module-blacklist-inventory-sh) | **Inventário e Blacklist Automatizada de Módulos Inseguros do Kernel** | `lsmod, modprobe, modinfo, find` |
| **09** | [`09-local-apt-dnf-mirror-cache-sync-sh/`](./09-local-apt-dnf-mirror-cache-sync-sh) | **Sincronizador e Cache de Repositórios Locais APT/DNF para Ambientes Isolados** | `reposync, createrepo, rsync, gpg, du` |
| **10** | [`10-multi-user-quota-enforcement-alert-sh/`](./10-multi-user-quota-enforcement-alert-sh) | **Auditor e Enforcer de Cotas de Disco Multi-Usuário** | `repquota, quota, find, mailx, logger` |
| **11** | [`11-sudoers-syntax-validation-deployer-sh/`](./11-sudoers-syntax-validation-deployer-sh) | **Deployer Seguro de Regras Sudoers com Validação Sintática via visudo** | `visudo, install, diff, logger` |
| **12** | [`12-cron-job-overlap-flock-guard-sh/`](./12-cron-job-overlap-flock-guard-sh) | **Wrapper Anti-Sobrecarga e Lock Concorrente para Tarefas Cron com flock** | `flock, date, logger, exec` |
| **13** | [`13-core-dump-analyzer-gdb-backtrace-sh/`](./13-core-dump-analyzer-gdb-backtrace-sh) | **Coletor e Analisador Automatizado de Core Dumps com GDB** | `coredumpctl, gdb, tar, gzip, curl` |
| **14** | [`14-ulimit-file-descriptor-leak-detector-sh/`](./14-ulimit-file-descriptor-leak-detector-sh) | **Detector de Vazamento de File Descriptors e Ajuste Dinâmico de Ulimit** | `lsof, /proc, awk, sort, sysctl` |
| **15** | [`15-locale-timezone-ntp-drift-corrector-sh/`](./15-locale-timezone-ntp-drift-corrector-sh) | **Auditor e Corretor de Drift de Relógio NTP e Timezone** | `timedatectl, chronyc, ntpq, date` |
| **16** | [`16-grub2-secure-boot-recovery-config-sh/`](./16-grub2-secure-boot-recovery-config-sh) | **Auditor e Validador de Configurações GRUB2 e Secure Boot** | `grubby, grub2-mkconfig, efibootmgr, mokutil` |
| **17** | [`17-orphan-package-cleaner-orphan-lib-sh/`](./17-orphan-package-cleaner-orphan-lib-sh) | **Higienização Automatizada de Pacotes Órfãos e Bibliotecas Obsoletas** | `deborphan, apt-get, dpkg, logger` |
| **18** | [`18-tuned-performance-profile-switcher-sh/`](./18-tuned-performance-profile-switcher-sh) | **Alternador Dinâmico de Perfis de Performance Tuned e Kernel Sysctl** | `tuned-adm, sysctl, numactl, lshw` |
| **19** | [`19-system-resource-benchmark-baseline-sh/`](./19-system-resource-benchmark-baseline-sh) | **Gerador de Linha de Base (Baseline) de Desempenho e Recursos do Servidor** | `fio, dd, sysbench, iperf3, jq` |
| **20** | [`20-linux-server-decommission-data-wipe-sh/`](./20-linux-server-decommission-data-wipe-sh) | **Descomissionamento Seguro de Servidor com Sobrescrita de Dados Conforme NIST 800-88** | `shred, blkdiscard, lsblk, openssl, sha256sum` |
