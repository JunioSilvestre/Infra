# 09-storage-e-filesystems — Storage, Sistemas de Arquivos, LVM e RAID

Projetos em Bash para expansão de LVM, recuperação de RAID mdadm, auditoria de exports NFS, quotas, e scrubs ZFS/Btrfs.

---

## 🏛️ Trilha de Projetos Práticos de Nível Sênior (20 Projetos Reais)

| # | Projeto | Título / Foco de Negócio | Ferramentas Nativas Chave |
|---|---|---|---|
| **01** | [`01-lvm-thin-pool-auto-extend-threshold-sh/`](./01-lvm-thin-pool-auto-extend-threshold-sh) | **Expansor Automático de Thin Pools LVM com Base em Limiar de Ocupação** | `lvs, lvextend, awk, logger` |
| **02** | [`02-raid-mdadm-degraded-array-hot-spare-sh/`](./02-raid-mdadm-degraded-array-hot-spare-sh) | **Monitor de Arrays RAID mdadm Degradados e Inserção Automática de Hot-Spare** | `mdadm, /proc/mdstat, mailx, logger` |
| **03** | [`03-nfs-export-mount-lock-deadlock-remover-sh/`](./03-nfs-export-mount-lock-deadlock-remover-sh) | **Detector e Removedor de Deadlocks de Montagem e Locks NFS Órfãos** | `showmount, exportfs, /proc/locks, fuser, kill` |
| **04** | [`04-btrfs-subvolume-quota-scrub-scheduler-sh/`](./04-btrfs-subvolume-quota-scrub-scheduler-sh) | **Agendador e Auditor de Btrfs Scrub e Gestão de Cotas de Subvolumes (qgroups)** | `btrfs, awk, logger, mailx` |
| **05** | [`05-ceph-rbd-volume-provisioner-sh/`](./05-ceph-rbd-volume-provisioner-sh) | **Provisionador e Mapeador de Volumes de Bloco Ceph RBD em Nós de Computação** | `rbd, mkfs.xfs, mount, lsblk` |
| **06** | [`06-disk-usage-watermark-purge-cache-sh/`](./06-disk-usage-watermark-purge-cache-sh) | **Limpador de Emergência com Base em Marcas D'água (Watermarks) de Uso de Disco** | `df, find, rm, apt-get, docker` |
| **07** | [`07-iscsi-initiator-multipath-failover-sh/`](./07-iscsi-initiator-multipath-failover-sh) | **Gerenciador e Validador de Caminhos Multipath iSCSI com iscsiadm** | `iscsiadm, multipath, multipathd, lsblk` |
| **08** | [`08-zfs-scrub-error-detection-email-sh/`](./08-zfs-scrub-error-detection-email-sh) | **Auditor e Notificador de Erros de Scrub e Saúde de Pools ZFS (zpool)** | `zpool, zfs, awk, mailx` |
| **09** | [`09-samba-cifs-share-audit-permissions-sh/`](./09-samba-cifs-share-audit-permissions-sh) | **Auditor de Permissões e Sessões Ativas em Compartilhamentos Samba / CIFS** | `testparm, smbstatus, find, awk` |
| **10** | [`10-ext4-xfs-filesystem-corruption-check-sh/`](./10-ext4-xfs-filesystem-corruption-check-sh) | **Verificador Preventivo de Corrupção e Status de Montagem em Sistemas ext4/XFS** | `tune2fs, xfs_info, /proc/mounts, dmesg, touch` |
| **11** | [`11-inode-exhaustion-deep-finder-sh/`](./11-inode-exhaustion-deep-finder-sh) | **Localizador de Diretórios com Esgotamento Crítico de Inodes** | `df, find, awk, sort, head` |
| **12** | [`12-duplicity-encrypted-cloud-backup-sh/`](./12-duplicity-encrypted-cloud-backup-sh) | **Orquestrador de Backup Incremental Criptografado com Duplicity e GPG** | `duplicity, gpg, aws, date` |
| **13** | [`13-nvme-trim-discard-batch-scheduler-sh/`](./13-nvme-trim-discard-batch-scheduler-sh) | **Agendador e Otimizador de Descarte TRIM / Fstrim em Discos NVMe e SSDs** | `fstrim, lsblk, date, logger` |
| **14** | [`14-glusterfs-split-brain-detector-sh/`](./14-glusterfs-split-brain-detector-sh) | **Detector e Notificador de Split-Brain em Volumes Replicados GlusterFS** | `gluster, awk, mailx, logger` |
| **15** | [`15-storage-io-bandwidth-stress-fio-sh/`](./15-storage-io-bandwidth-stress-fio-sh) | **Testador e Homologador de IOPS e Throughput de Storage com FIO (Flexible I/O Tester)** | `fio, jq, awk, date` |
| **16** | [`16-overlayfs-ephemeral-scratchpad-manager-sh/`](./16-overlayfs-ephemeral-scratchpad-manager-sh) | **Gerenciador de Ambientes Efêmeros com OverlayFS e Memória RAM (tmpfs)** | `mount, umount, mkdir, rm` |
| **17** | [`17-snapshot-rollback-canary-verifier-sh/`](./17-snapshot-rollback-canary-verifier-sh) | **Verificador Automatizado de Consistência e Rollback de Snapshots de Storage** | `lvcreate, zfs clone, mount, sha256sum, umount` |
| **18** | [`18-file-shred-dod-wipe-compliance-sh/`](./18-file-shred-dod-wipe-compliance-sh) | **Destruidor Seguro de Arquivos Conforme Padrão DoD 5220.22-M e NIST 800-88** | `shred, srm, dd, stat` |
| **19** | [`19-directory-quota-hard-limit-enforcer-sh/`](./19-directory-quota-hard-limit-enforcer-sh) | **Enforcer e Auditor de Limites Rígidos de Diretórios com XFS Project Quotas** | `xfs_quota, awk, column, logger` |
| **20** | [`20-san-fibre-channel-lun-rescan-discovery-sh/`](./20-san-fibre-channel-lun-rescan-discovery-sh) | **Redescoberta e Rescan Não-Destrutivo de LUNs Fibre Channel / SAS via Sysfs** | `/sys/class/scsi_host, rescan-scsi-bus.sh, multipathd, lsblk` |
