# 06-cloud-e-infraestrutura — Cloud Computing e Infraestrutura Híbrida

Projetos em Bash para automação em nuvens AWS, Azure, GCP e híbrida, finops, gerenciamento de instâncias spot e desastre recovery.

---

## 🏛️ Trilha de Projetos Práticos de Nível Sênior (20 Projetos Reais)

| # | Projeto | Título / Foco de Negócio | Ferramentas Nativas Chave |
|---|---|---|---|
| **01** | [`01-aws-ec2-spot-instance-termination-handler-sh/`](./01-aws-ec2-spot-instance-termination-handler-sh) | **Tratador de Notificação de Término de Instâncias EC2 Spot com Drenagem Graceful** | `curl, jq, pkill, systemctl, logger` |
| **02** | [`02-aws-s3-glacier-deep-archive-tiering-sh/`](./02-aws-s3-glacier-deep-archive-tiering-sh) | **Gerenciador e Auditor de Transição de Ciclo de Vida S3 para Glacier Deep Archive** | `aws, jq, bc, date` |
| **03** | [`03-azure-vm-ephemeral-os-disk-provisioner-sh/`](./03-azure-vm-ephemeral-os-disk-provisioner-sh) | **Provisionador Automatizado de Máquinas Virtuais Azure com Discos Ephemeral OS** | `az, jq, envsubst, ssh` |
| **04** | [`04-gcp-gke-preemptible-node-evacuation-sh/`](./04-gcp-gke-preemptible-node-evacuation-sh) | **Evacuador de Nós Preemptíveis / Spot em Clusters GKE do Google Cloud** | `curl, kubectl, logger, sleep` |
| **05** | [`05-cloud-finops-unattached-ebs-eip-cleaner-sh/`](./05-cloud-finops-unattached-ebs-eip-cleaner-sh) | **FinOps: Limpador de Volumes EBS Desanexados e IPs Elásticos Ociosos** | `aws, jq, awk, date` |
| **06** | [`06-hybrid-cloud-ipsec-tunnel-keepalive-sh/`](./06-hybrid-cloud-ipsec-tunnel-keepalive-sh) | **Monitor e Re-estabelecedor de Túneis IPsec VPN Nuvem Híbrida (On-Premise / Cloud)** | `ipsec, strongswan, ping, systemctl, logger` |
| **07** | [`07-aws-route53-healthcheck-failover-router-sh/`](./07-aws-route53-healthcheck-failover-router-sh) | **Roteador de Failover Multi-Região e Latência Dinâmica no AWS Route 53** | `aws, jq, curl, date` |
| **08** | [`08-azure-blob-snapshot-lifecycle-manager-sh/`](./08-azure-blob-snapshot-lifecycle-manager-sh) | **Gerenciador de Snapshots e Rotação de Contêineres de Dados no Azure Blob Storage** | `az, jq, date, awk` |
| **09** | [`09-gcp-cloud-storage-signed-url-generator-sh/`](./09-gcp-cloud-storage-signed-url-generator-sh) | **Gerador Automatizado de Signed URLs Temporárias para Google Cloud Storage** | `gcloud, gsutil, openssl, date` |
| **10** | [`10-aws-iam-key-age-rotation-notifier-sh/`](./10-aws-iam-key-age-rotation-notifier-sh) | **Auditor de Idade e Notificador de Rotação de Chaves de Acesso IAM na AWS** | `aws, jq, date, mailx, bc` |
| **11** | [`11-multi-region-cloud-latency-tester-sh/`](./11-multi-region-cloud-latency-tester-sh) | **Benchmark e Testador de Latência Inter-Regiões entre Provedores de Nuvem (Multi-Cloud)** | `curl, ping, awk, column, sort` |
| **12** | [`12-terraform-state-s3-lock-resolver-sh/`](./12-terraform-state-s3-lock-resolver-sh) | **Auditor e Resolvedor Seguro de Travamentos (Locks) do Terraform State no AWS DynamoDB** | `aws, terraform, jq, date` |
| **13** | [`13-aws-cloudwatch-log-group-retention-enforcer-sh/`](./13-aws-cloudwatch-log-group-retention-enforcer-sh) | **Auditor e Enforcer de Período de Retenção de Log Groups no AWS CloudWatch** | `aws, jq, awk` |
| **14** | [`14-azure-keyvault-secret-backup-sync-sh/`](./14-azure-keyvault-secret-backup-sync-sh) | **Sincronizador e Backup Criptografado Offline de Segredos do Azure Key Vault** | `az, jq, openssl, tar` |
| **15** | [`15-gcp-service-account-least-privilege-audit-sh/`](./15-gcp-service-account-least-privilege-audit-sh) | **Auditor de Menor Privilégio e Permissões Ociosas para Service Accounts no GCP** | `gcloud, jq, date` |
| **16** | [`16-cloud-bastion-ssh-session-forwarder-sh/`](./16-cloud-bastion-ssh-session-forwarder-sh) | **Encaminhador de Conexões Seguras com Bastion Host em Nuvem e SSH ProxyJump** | `ssh, nc, awk, logger` |
| **17** | [`17-aws-alb-target-group-instance-drainer-sh/`](./17-aws-alb-target-group-instance-drainer-sh) | **Drenador Gracioso de Instâncias em Target Groups de Application Load Balancer (ALB)** | `aws, jq, sleep, logger` |
| **18** | [`18-hybrid-dns-forwarder-bind9-route53-sh/`](./18-hybrid-dns-forwarder-bind9-route53-sh) | **Encaminhador DNS Híbrido entre Servidores Locais Bind9 e AWS Route 53 Outposts** | `named-checkconf, rndc, systemctl, dig` |
| **19** | [`19-cloud-disaster-recovery-ami-cross-region-copy-sh/`](./19-cloud-disaster-recovery-ami-cross-region-copy-sh) | **Orquestrador de Disaster Recovery com Replicação de AMIs e Snapshots Cross-Region** | `aws, jq, date, sleep` |
| **20** | [`20-cloud-cost-anomaly-daily-billing-alert-sh/`](./20-cloud-cost-anomaly-daily-billing-alert-sh) | **Detector de Anomalias de Custo Diário e Alertas de Faturamento em Nuvem** | `aws, jq, awk, bc, curl` |
