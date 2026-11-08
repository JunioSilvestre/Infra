# Módulo: Administração de Sistemas Linux com Python

Projetos em Python interagindo com o kernel, systemd, /proc, pam, quotas e diagnósticos avançados de hardware e SO.

Este módulo contém 20 projetos práticos de nível sênior baseados na vida real corporativa (SRE, Platform Engineering, DevOps e Infraestrutura em Nuvem).

## Índice de Projetos

| Diretório | Nome do Projeto | Documentação |
|:---|:---|:---:|
| `01-systemd-service-manager-dbus-api` | Gerenciador de Serviços do Systemd via Interface Nativa D-Bus em Python | [Visualizar](./01-systemd-service-manager-dbus-api/README.md) |
| `02-proc-filesystem-deep-inspector` | Inspetor Forense de Processos Lendo Diretamente o Sistema de Arquivos /proc | [Visualizar](./02-proc-filesystem-deep-inspector/README.md) |
| `03-pam-python-mfa-authenticator-module` | Módulo PAM em Python para Validação de Segundo Fator de Autenticação (TOTP) | [Visualizar](./03-pam-python-mfa-authenticator-module/README.md) |
| `04-linux-user-group-ldap-sync-agent` | Agente Sincronizador de Usuários e Grupos Locais (/etc/passwd) com Active Directory | [Visualizar](./04-linux-user-group-ldap-sync-agent/README.md) |
| `05-udev-hotplug-device-manager` | Gerenciador de Eventos de Hardware em Tempo Real com pyudev (Discos e Redes) | [Visualizar](./05-udev-hotplug-device-manager/README.md) |
| `06-posix-acl-manager-pylibacl` | Auditor e Enforcer de Permissões POSIX ACL em Diretórios Compartilhados | [Visualizar](./06-posix-acl-manager-pylibacl/README.md) |
| `07-cgroups-v2-resource-enforcer-tool` | Controlador Dinâmico de Limites de CPU e Memória via Sistema cgroups v2 | [Visualizar](./07-cgroups-v2-resource-enforcer-tool/README.md) |
| `08-linux-package-dependency-graph-resolver` | Resolvedor e Analisador de Grafos de Dependência de Pacotes APT e RPM | [Visualizar](./08-linux-package-dependency-graph-resolver/README.md) |
| `09-ebpf-process-execution-tracker-bcc` | Rastreador de Execução de Binários em Tempo Real com eBPF (BCC Python) | [Visualizar](./09-ebpf-process-execution-tracker-bcc/README.md) |
| `10-kernel-sysctl-compliance-auditor` | Auditor Automatizado de Parâmetros de Kernel (/proc/sys) contra CIS Benchmarks | [Visualizar](./10-kernel-sysctl-compliance-auditor/README.md) |
| `11-linux-boot-timeline-plotter` | Visualizador e Gráfico de Linha do Tempo de Inicialização do Linux via D-Bus | [Visualizar](./11-linux-boot-timeline-plotter/README.md) |
| `12-swap-thrashing-prevention-daemon` | Daemon Proativo de Prevenção de Swap Thrashing com Descarte Inteligente de Cache | [Visualizar](./12-swap-thrashing-prevention-daemon/README.md) |
| `13-disk-smart-predictive-failure-model` | Modelo Preditivo de Falha de Discos NVMe e HDDs com Scikit-Learn e smartctl | [Visualizar](./13-disk-smart-predictive-failure-model/README.md) |
| `14-core-dump-automated-triage-tool` | Triador Automatizado de Core Dumps com GDB Python API e Geração de Stack Trace | [Visualizar](./14-core-dump-automated-triage-tool/README.md) |
| `15-chroot-environment-builder-script` | Construtor Automatizado de Ambientes Chroot Mínimos e Herméticos | [Visualizar](./15-chroot-environment-builder-script/README.md) |
| `16-linux-firewall-nftables-api-controller` | Controlador Dinâmico de Regras de Firewall com Biblioteca libnftables em Python | [Visualizar](./16-linux-firewall-nftables-api-controller/README.md) |
| `17-systemd-timer-crud-generator` | Gerador Declarativo e Validador de Unidades Systemd Service e Timer | [Visualizar](./17-systemd-timer-crud-generator/README.md) |
| `18-kernel-module-dependency-analyzer` | Analisador de Módulos de Kernel Carregados e Detecção de Drivers Desnecessários | [Visualizar](./18-kernel-module-dependency-analyzer/README.md) |
| `19-network-socket-leak-tracer` | Rastreador de Vazamento de Sockets TCP e Descritores com Netlink em Python | [Visualizar](./19-network-socket-leak-tracer/README.md) |
| `20-bare-metal-hardware-inventory-exporter` | Coletor Completo de Inventário de Hardware (DMI, PCI, NVMe) com Formato JSON | [Visualizar](./20-bare-metal-hardware-inventory-exporter/README.md) |
