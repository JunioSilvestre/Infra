# 07-containers-e-kubernetes — Containers, Docker e Orquestração Kubernetes

Projetos em Bash para triagem de pods em CrashLoopBackOff, manutenção de nós de cluster, inspeção containerd e segurança de contêineres.

---

## 🏛️ Trilha de Projetos Práticos de Nível Sênior (20 Projetos Reais)

| # | Projeto | Título / Foco de Negócio | Ferramentas Nativas Chave |
|---|---|---|---|
| **01** | [`01-k8s-pod-crashloopbackoff-auto-triage-sh/`](./01-k8s-pod-crashloopbackoff-auto-triage-sh) | **Triagem Automatizada e Coleta de Evidências de Pods em CrashLoopBackOff** | `kubectl, jq, awk, column, tar` |
| **02** | [`02-k8s-node-memory-pressure-drainer-sh/`](./02-k8s-node-memory-pressure-drainer-sh) | **Drenador Preventivo e Cordon de Nós Kubernetes sob Pressão de Memória / Disco** | `kubectl, jq, logger, sleep` |
| **03** | [`03-docker-rootless-daemon-provisioner-sh/`](./03-docker-rootless-daemon-provisioner-sh) | **Provisionador e Auditor de Docker em Modo Rootless sem Privilégios de Root** | `dockerd-rootless.sh, systemctl --user, loginctl, id` |
| **04** | [`04-container-image-cve-trivy-scanner-sh/`](./04-container-image-cve-trivy-scanner-sh) | **Scanner Contínuo de Imagens de Containers em Execução com Trivy** | `docker, trivy, jq, column, mailx` |
| **05** | [`05-k8s-secret-sync-vault-operator-sh/`](./05-k8s-secret-sync-vault-operator-sh) | **Sincronizador Leve de Segredos entre HashiCorp Vault e Kubernetes Secrets** | `curl, jq, base64, kubectl` |
| **06** | [`06-k8s-ingress-cert-manager-renewal-check-sh/`](./06-k8s-ingress-cert-manager-renewal-check-sh) | **Auditor de Certificados TLS de Ingress do Kubernetes e Validação do cert-manager** | `kubectl, jq, date, openssl` |
| **07** | [`07-container-log-driver-journald-forwarder-sh/`](./07-container-log-driver-journald-forwarder-sh) | **Configurador e Validador de Log Drivers de Containers com Journald e Rotação Local** | `jq, dockerd, systemctl, df` |
| **08** | [`08-k8s-etcd-snapshot-backup-s3-sh/`](./08-k8s-etcd-snapshot-backup-s3-sh) | **Backup Automatizado de Snapshots do etcd do Kubernetes com Envio Criptografado para S3** | `etcdctl, openssl, aws, gzip, logger` |
| **09** | [`09-k8s-pvc-disk-expansion-automator-sh/`](./09-k8s-pvc-disk-expansion-automator-sh) | **Monitor e Expansor Dinâmico de Volumes Persistentes (PVC) no Kubernetes** | `kubectl, jq, bc, awk` |
| **10** | [`10-containerd-crictl-container-inspector-sh/`](./10-containerd-crictl-container-inspector-sh) | **Inspetor e Diagnóstico Direto de Runtime de Containers com crictl e containerd** | `crictl, ctr, jq, column` |
| **11** | [`11-k8s-networkpolicy-traffic-verifier-sh/`](./11-k8s-networkpolicy-traffic-verifier-sh) | **Validador e Testador de Tráfego de NetworkPolicies no Kubernetes** | `kubectl, nc, curl, jq` |
| **12** | [`12-k8s-horizontal-pod-autoscaler-simulator-sh/`](./12-k8s-horizontal-pod-autoscaler-simulator-sh) | **Simulador e Analisador de Gatilhos de Escalonamento do HPA no Kubernetes** | `kubectl, jq, awk, sleep` |
| **13** | [`13-docker-compose-multi-env-stack-manager-sh/`](./13-docker-compose-multi-env-stack-manager-sh) | **Orquestrador de Stacks Docker Compose Multi-Ambiente com Verificação de Sanidade** | `docker compose, jq, envsubst` |
| **14** | [`14-k8s-cluster-upgrade-node-by-node-drain-sh/`](./14-k8s-cluster-upgrade-node-by-node-drain-sh) | **Orquestrador de Atualização Gradual (Rolling Upgrade) de Nós de Cluster Kubernetes** | `kubectl, apt-get, systemctl, sleep, logger` |
| **15** | [`15-k8s-crontab-job-failure-alerter-sh/`](./15-k8s-crontab-job-failure-alerter-sh) | **Monitor e Notificador de Falhas em CronJobs do Kubernetes** | `kubectl, jq, curl, date` |
| **16** | [`16-calico-cilium-cni-ipam-leak-hunter-sh/`](./16-calico-cilium-cni-ipam-leak-hunter-sh) | **Caçador de Vazamento de IPs e Sockets Órfãos de CNI (Calico / Cilium)** | `kubectl, calicoctl, cilium-dbg, diff, sort` |
| **17** | [`17-container-seccomp-profile-generator-strace-sh/`](./17-container-seccomp-profile-generator-strace-sh) | **Gerador de Perfis Seccomp para Containers Baseado em Rastreamento strace** | `strace, awk, sort, uniq, jq` |
| **18** | [`18-k8s-service-endpoints-health-probe-sh/`](./18-k8s-service-endpoints-health-probe-sh) | **Auditor de Integridade de Endpoints e Slices de Serviços Kubernetes** | `kubectl, jq, dig, column` |
| **19** | [`19-k8s-rbac-unused-roles-auditor-sh/`](./19-k8s-rbac-unused-roles-auditor-sh) | **Auditor de Menor Privilégio e Permissões RBAC Ociosas no Kubernetes** | `kubectl, jq, awk, sort` |
| **20** | [`20-container-pid-cgroup-leak-watchdog-sh/`](./20-container-pid-cgroup-leak-watchdog-sh) | **Monitor e Caçador de Vazamentos de PIDs e Sub-cgroups de Containers** | `cat, /sys/fs/cgroup, ps, kill, awk` |
