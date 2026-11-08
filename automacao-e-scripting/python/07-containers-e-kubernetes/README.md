# Módulo: Containers, Docker e Orquestração Kubernetes com Python

Projetos em Python interagindo com Kubernetes Client, Docker SDK, operadores customizados, CRDs, admission controllers e telemetria de pods.

Este módulo contém 20 projetos práticos de nível sênior baseados na vida real corporativa (SRE, Platform Engineering, DevOps e Infraestrutura em Nuvem).

## Índice de Projetos

| Diretório | Nome do Projeto | Documentação |
|:---|:---|:---:|
| `01-k8s-pod-crash-triage-operator` | Operador de Triagem e Diagnóstico Automatizado de Pods em Falha no Kubernetes | [Visualizar](./01-k8s-pod-crash-triage-operator/README.md) |
| `02-docker-sdk-container-remediation-daemon` | Daemon de Auto-Recuperação e Monitoramento de Containers com Docker SDK | [Visualizar](./02-docker-sdk-container-remediation-daemon/README.md) |
| `03-k8s-admission-webhook-security-validator` | Mutating e Validating Admission Webhook para Kubernetes com FastAPI | [Visualizar](./03-k8s-admission-webhook-security-validator/README.md) |
| `04-k8s-pvc-disk-usage-auto-scaler` | Auto-Scaler Dinâmico de Volumes Persistentes (PVC) no Kubernetes em Python | [Visualizar](./04-k8s-pvc-disk-usage-auto-scaler/README.md) |
| `05-custom-k8s-controller-kopf-framework` | Controlador Kubernetes Customizado com Framework Kopf para Gestão de CRDs | [Visualizar](./05-custom-k8s-controller-kopf-framework/README.md) |
| `06-container-image-cve-trivy-api-gate` | Portão de Segurança de Imagens com Trivy API e Kubernetes Admission Check | [Visualizar](./06-container-image-cve-trivy-api-gate/README.md) |
| `07-k8s-cronjob-execution-monitor-alerter` | Monitor e Rastreador de Falhas em CronJobs do Kubernetes via API Watch | [Visualizar](./07-k8s-cronjob-execution-monitor-alerter/README.md) |
| `08-docker-layer-analyzer-dive-python` | Analisador de Eficiência e Desperdício de Camadas de Containers Docker em Python | [Visualizar](./08-docker-layer-analyzer-dive-python/README.md) |
| `09-k8s-node-cordon-drain-orchestrator` | Orquestrador de Drenagem Segura e Cordon de Nós Kubernetes para Manutenções | [Visualizar](./09-k8s-node-cordon-drain-orchestrator/README.md) |
| `10-k8s-secret-sync-vault-operator-py` | Sincronizador Contínuo de Segredos entre HashiCorp Vault e Kubernetes Secrets | [Visualizar](./10-k8s-secret-sync-vault-operator-py/README.md) |
| `11-container-process-tree-cgroup-tracer` | Rastreador de Árvore de Processos e Limites de cgroups de Containers no Host | [Visualizar](./11-container-process-tree-cgroup-tracer/README.md) |
| `12-k8s-network-policy-connectivity-tester` | Testador Automatizado de Regras de NetworkPolicy com Pods Efêmeros de Sonda | [Visualizar](./12-k8s-network-policy-connectivity-tester/README.md) |
| `13-docker-compose-config-merger-validator` | Mesclador e Validador Semântico de Stacks Docker Compose Multi-Arquivo | [Visualizar](./13-docker-compose-config-merger-validator/README.md) |
| `14-k8s-ingress-ssl-expiry-cluster-scanner` | Scanner em Lote de Certificados TLS de Ingress em Todo o Cluster Kubernetes | [Visualizar](./14-k8s-ingress-ssl-expiry-cluster-scanner/README.md) |
| `15-containerd-crictl-metrics-collector` | Coletor de Estatísticas de Containers diretamente do containerd via gRPC API | [Visualizar](./15-containerd-crictl-metrics-collector/README.md) |
| `16-k8s-rbac-unused-permissions-auditor` | Auditor de Permissões RBAC Ociosas e Privilégios Excessivos no Kubernetes | [Visualizar](./16-k8s-rbac-unused-permissions-auditor/README.md) |
| `17-container-healthcheck-circuit-breaker` | Circuit Breaker para Containers com Redirecionamento Automático de Tráfego | [Visualizar](./17-container-healthcheck-circuit-breaker/README.md) |
| `18-k8s-events-stream-elasticsearch-shipper` | Exportador em Tempo Real de Eventos do Kubernetes para Elasticsearch / OpenSearch | [Visualizar](./18-k8s-events-stream-elasticsearch-shipper/README.md) |
| `19-ephemeral-test-cluster-kind-manager` | Gerenciador do Ciclo de Vida de Clusters Kubernetes Efêmeros com KinD em Python | [Visualizar](./19-ephemeral-test-cluster-kind-manager/README.md) |
| `20-k8s-cluster-capacity-headroom-evaluator` | Avaliador de Capacidade e Margem de Segurança (Headroom) de Recursos no Cluster | [Visualizar](./20-k8s-cluster-capacity-headroom-evaluator/README.md) |
