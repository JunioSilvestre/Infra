# 12-arquitetura-e-projetos — Arquitetura de Sistemas, Projetos Integradores e Resiliência

Projetos integradores corporativos em Bash de nível sênior, cobrindo recuperação de desastres (DR), migração de cloud para on-premise, PKI completa e orquestração autônoma.

---

## 🏛️ Trilha de Projetos Práticos de Nível Sênior (20 Projetos Reais)

| # | Projeto | Título / Foco de Negócio | Ferramentas Nativas Chave |
|---|---|---|---|
| **01** | [`01-enterprise-dr-multi-site-failover-orchestrator-sh/`](./01-enterprise-dr-multi-site-failover-orchestrator-sh) | **Orquestrador de Disaster Recovery Multi-Site com Comutação Atômica de Tráfego** | `ssh, psql, aws, dig, logger, date` |
| **02** | [`02-zero-downtime-blue-green-proxy-router-sh/`](./02-zero-downtime-blue-green-proxy-router-sh) | **Roteador e Orquestrador de Deploys Blue/Green com Proxy Dinâmico e Zero Downtime** | `haproxy, curl, socat, awk, jq` |
| **03** | [`03-immutable-infrastructure-image-builder-sh/`](./03-immutable-infrastructure-image-builder-sh) | **Construtor Automatizado de Imagens de Servidor Imutáveis com Packer e Bash** | `qemu-img, packer, virt-sysprep, shred` |
| **04** | [`04-hybrid-active-directory-ldap-sync-sh/`](./04-hybrid-active-directory-ldap-sync-sh) | **Sincronizador e Auditor de Contas entre Microsoft Active Directory e OpenLDAP/Linux PAM** | `ldapsearch, kinit, sssd, awk` |
| **05** | [`05-payment-gateway-pci-audit-evidence-pack-sh/`](./05-payment-gateway-pci-audit-evidence-pack-sh) | **Compilador Automatizado do Pacote de Evidências Técnicas para Auditoria PCI-DSS Level 1** | `tar, sha256sum, gpg, iptables, openssl` |
| **06** | [`06-air-gapped-environment-software-courier-sh/`](./06-air-gapped-environment-software-courier-sh) | **Entregador Seguro de Pacotes e Atualizações para Ambientes Isolados (Air-Gapped)** | `apt-get, reprepro, gpg, tar, sha256sum` |
| **07** | [`07-multi-tenant-database-backup-encryption-sh/`](./07-multi-tenant-database-backup-encryption-sh) | **Orquestrador de Backup e Criptografia Isolada por Tenant para Bancos Multi-Tenant** | `pg_dump, openssl, aws, gzip, xargs` |
| **08** | [`08-microservices-distributed-tracing-agent-sh/`](./08-microservices-distributed-tracing-agent-sh) | **Agente Leve de Injeção de Rastreamento Distribuído (Trace ID) para Daemons em Bash** | `openssl, date, curl, jq` |
| **09** | [`09-high-throughput-syslog-concentrator-sh/`](./09-high-throughput-syslog-concentrator-sh) | **Concentrador e Roteador de Syslog de Alta Vazão com Named Pipes e Filtros de Regras** | `socat, mkfifo, awk, logger` |
| **10** | [`10-autonomous-site-reliability-healer-sh/`](./10-autonomous-site-reliability-healer-sh) | **Motor Autônomo de Remediação e Auto-Cura de Incidentes de Infraestrutura (SRE Healer)** | `socat, jq, systemctl, logger` |
| **11** | [`11-enterprise-pki-intermediate-ca-provisioner-sh/`](./11-enterprise-pki-intermediate-ca-provisioner-sh) | **Provisionador Completo de PKI Corporativa de 3 Camadas (Root CA, Intermediate CA, Leaf)** | `openssl, date, install, shred` |
| **12** | [`12-edge-compute-firmware-ota-deployer-sh/`](./12-edge-compute-firmware-ota-deployer-sh) | **Distribuidor de Atualizações Over-The-Air (OTA) com Rollback Atômico para Servidores Edge** | `grub-reboot, sha256sum, gpg, curl` |
| **13** | [`13-data-warehouse-etl-bash-streaming-pipeline-sh/`](./13-data-warehouse-etl-bash-streaming-pipeline-sh) | **Pipeline de ETL de Alta Velocidade em Streaming com Bash, awk e psql/DuckDB** | `pigz, awk, psql, duckdb, mkfifo` |
| **14** | [`14-sox-compliance-financial-records-archiver-sh/`](./14-sox-compliance-financial-records-archiver-sh) | **Arquivador Imutável de Registros Contábeis e Logs Financeiros Conforme SOX (Sarbanes-Oxley)** | `openssl, sha256sum, chattr, curl` |
| **15** | [`15-high-performance-compute-hpc-slurm-helper-sh/`](./15-high-performance-compute-hpc-slurm-helper-sh) | **Orquestrador de Jobs de Alta Performance (HPC) e Gestão de Filas SLURM** | `sbatch, squeue, sacctmgr, awk` |
| **16** | [`16-cloud-exit-on-prem-migration-stream-sh/`](./16-cloud-exit-on-prem-migration-stream-sh) | **Pipeline de Repatriação de Dados e Migração Cloud-to-On-Premise sem Downtime** | `rsync, ssh, parallel, sha256sum, pv` |
| **17** | [`17-autonomous-ssl-sni-wildcard-mesh-sh/`](./17-autonomous-ssl-sni-wildcard-mesh-sh) | **Malha Autônoma de Certificados SSL Wildcard com DNS Challenge Automatizado** | `curl, openssl, jq, dig, systemctl` |
| **18** | [`18-global-server-load-balancing-dns-health-sh/`](./18-global-server-load-balancing-dns-health-sh) | **Balanceador Global de Servidores (GSLB) Baseado em DNS e Roteamento de Saúde** | `curl, dig, nsupdate, rndc, jq` |
| **19** | [`19-enterprise-kubernetes-baremetal-bootstrap-sh/`](./19-enterprise-kubernetes-baremetal-bootstrap-sh) | **Bootstrapper Autônomo de Clusters Kubernetes Bare-Metal com kubeadm e Cilium** | `kubeadm, kubectl, containerd, cilium, sysctl` |
| **20** | [`20-mission-critical-infrastructure-blackbox-recorder-sh/`](./20-mission-critical-infrastructure-blackbox-recorder-sh) | **Gravador de Caixa-Preta (Flight Recorder) de Incidentes para Ambientes de Missão Crítica** | `ps, ss, /proc, dmesg, tar, chattr, sync` |
