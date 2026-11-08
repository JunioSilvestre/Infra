# Módulo: Provisionamento de Linux e Virtualização Híbrida

Gestão de imagens de SO imutáveis, integração com VMware vSphere, KVM/Proxmox e orquestração de bare-metal com cloud-init.

Este módulo contém 20 projetos práticos de nível sênior baseados no dia a dia real de engenheiros de Infraestrutura em Nuvem, SRE e Platform Engineering operando em empresas de grande porte nos estados de Nova York (NY), Massachusetts (MA) e Connecticut (CT).

## Índice de Projetos

| Diretório | Nome do Projeto | Documentação |
|:---|:---|:---:|
| `01-vsphere-enterprise-vm-template-automation` | Provisionamento Automatizado de Máquinas Virtuais no VMware vSphere com Terraform | [Visualizar](./01-vsphere-enterprise-vm-template-automation/README.md) |
| `02-cloud-init-disk-partitioning-lvm` | Configuração Dinâmica de Discos e Particionamento LVM via Cloud-Init em Nuvem | [Visualizar](./02-cloud-init-disk-partitioning-lvm/README.md) |
| `03-packer-golden-image-pipeline-cis` | Pipeline de Construção de Imagens Douradas (Golden AMIs) Endurecidas com Packer | [Visualizar](./03-packer-golden-image-pipeline-cis/README.md) |
| `04-proxmox-kvm-home-lab-automation` | Automação de Infraestrutura de Virtualização KVM com Proxmox VE e Terraform | [Visualizar](./04-proxmox-kvm-home-lab-automation/README.md) |
| `05-systemd-networkd-bonding-lacp` | Configuração Automatizada de Agregação de Links (Bonding LACP) em Servidores Bare-Metal | [Visualizar](./05-systemd-networkd-bonding-lacp/README.md) |
| `06-bare-metal-ipxe-tftp-bootstrap` | Orquestração de Boot em Rede e Provisionamento Desassistido com iPXE e TFTP | [Visualizar](./06-bare-metal-ipxe-tftp-bootstrap/README.md) |
| `07-drbd-high-availability-block-replication` | Replicação de Bloco em Tempo Real e Armazenamento Compartilhado com DRBD e Pacemaker | [Visualizar](./07-drbd-high-availability-block-replication/README.md) |
| `08-kernel-sysctl-tuning-hft-fintech` | Otimização Extrema de Parâmetros de Kernel Linux para Trading de Baixa Latência | [Visualizar](./08-kernel-sysctl-tuning-hft-fintech/README.md) |
| `09-multipath-io-san-storage-iscsi` | Conexão Resiliente a Redes SAN com Multipath I/O e iSCSI em Ambientes Empresariais | [Visualizar](./09-multipath-io-san-storage-iscsi/README.md) |
| `10-selinux-custom-type-enforcement-modules` | Construção de Políticas Customizadas do SELinux sem Desativar o Modo Enforcing | [Visualizar](./10-selinux-custom-type-enforcement-modules/README.md) |
| `11-chrony-ptp-nanosecond-clock-sync` | Sincronização de Relógio de Ultra-Precisão com PTP e Chrony para Finanças em NY | [Visualizar](./11-chrony-ptp-nanosecond-clock-sync/README.md) |
| `12-kvm-qemu-nested-virtualization-ci` | Provisionamento de Ambientes de CI com Suporte a Virtualização Aninhada (Nested KVM) | [Visualizar](./12-kvm-qemu-nested-virtualization-ci/README.md) |
| `13-zfs-storage-pool-scrubbing-automation` | Gerenciamento e Automação de Storage ZFS com Pools RAID-Z e Expurgamento | [Visualizar](./13-zfs-storage-pool-scrubbing-automation/README.md) |
| `14-systemd-cgroups-slice-isolation` | Isolamento de Recursos de Serviços do Sistema com systemd slices e cgroups v2 | [Visualizar](./14-systemd-cgroups-slice-isolation/README.md) |
| `15-freeipa-ldap-kerberos-enterprise-auth` | Autenticação Centralizada Linux com FreeIPA, Kerberos e Integração com Active Directory | [Visualizar](./15-freeipa-ldap-kerberos-enterprise-auth/README.md) |
| `16-linux-kdump-crash-dump-analysis` | Automação e Configuração de Captura de Crash Dumps de Kernel com Kdump | [Visualizar](./16-linux-kdump-crash-dump-analysis/README.md) |
| `17-chroot-jail-sftp-secure-transfer` | Construção de Ambiente SFTP Blindado em Chroot Jail para Parceiros Financeiros | [Visualizar](./17-chroot-jail-sftp-secure-transfer/README.md) |
| `18-aide-tripwire-host-intrusion-detection` | Monitoramento de Integridade de Arquivos de Sistema com AIDE e Relatórios Diários | [Visualizar](./18-aide-tripwire-host-intrusion-detection/README.md) |
| `19-linux-soft-raid-mdadm-nvme` | Configuração de Matrizes RAID de Alta Velocidade com mdadm sobre Discos NVMe | [Visualizar](./19-linux-soft-raid-mdadm-nvme/README.md) |
| `20-stratis-storage-daemon-modernization` | Modernização de Armazenamento Local com Stratis Storage em Red Hat Enterprise Linux | [Visualizar](./20-stratis-storage-daemon-modernization/README.md) |
