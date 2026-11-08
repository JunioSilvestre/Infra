# Módulo: Provisionamento de Clusters Kubernetes e Ecossistema de Containers

Automação de EKS, AKS, GKE, operadores de nuvem, drivers CSI, CNI e integração de Helm via Terraform.

Este módulo contém 20 projetos práticos de nível sênior baseados no dia a dia real de engenheiros de Infraestrutura em Nuvem, SRE e Platform Engineering operando em empresas de grande porte nos estados de Nova York (NY), Massachusetts (MA) e Connecticut (CT).

## Índice de Projetos

| Diretório | Nome do Projeto | Documentação |
|:---|:---|:---:|
| `01-eks-production-cluster-irsa-karpenter` | Cluster AWS EKS de Produção com Karpenter, IRSA e Addons Gerenciados | [Visualizar](./01-eks-production-cluster-irsa-karpenter/README.md) |
| `02-aks-private-cluster-azure-cni-overlay` | Cluster AKS Privado de Alta Segurança com Azure CNI Overlay e AAD Pod Identity | [Visualizar](./02-aks-private-cluster-azure-cni-overlay/README.md) |
| `03-helm-provider-bootstrap-stack` | Bootstrap Automatizado de Controladores Kubernetes com Provedor Helm | [Visualizar](./03-helm-provider-bootstrap-stack/README.md) |
| `04-gke-autopilot-multi-tenant-cluster` | Cluster GKE Autopilot com Isolamento Multi-Tenant e Workload Identity | [Visualizar](./04-gke-autopilot-multi-tenant-cluster/README.md) |
| `05-ebs-csi-driver-kms-encryption` | Provisionamento de Driver CSI do AWS EBS com Criptografia de Volume KMS | [Visualizar](./05-ebs-csi-driver-kms-encryption/README.md) |
| `06-argocd-gitops-root-application-bootstrap` | Implantação do ArgoCD e Padrão App-of-Apps via Terraform | [Visualizar](./06-argocd-gitops-root-application-bootstrap/README.md) |
| `07-cilium-cni-native-routing-mode` | Instalação e Configuração do Cilium CNI em Modo Roteamento Nativo e eBPF | [Visualizar](./07-cilium-cni-native-routing-mode/README.md) |
| `08-calico-network-security-policies-bootstrap` | Implementação Automatizada de Motor de Políticas de Rede com Calico Operator | [Visualizar](./08-calico-network-security-policies-bootstrap/README.md) |
| `09-external-secrets-operator-aws-secrets-manager` | Sincronização de Segredos do AWS Secrets Manager com External Secrets Operator | [Visualizar](./09-external-secrets-operator-aws-secrets-manager/README.md) |
| `10-grafana-prometheus-loki-stack-k8s` | Provisionamento da Stack Completa de Observabilidade (kube-prometheus-stack) | [Visualizar](./10-grafana-prometheus-loki-stack-k8s/README.md) |
| `11-cert-manager-cloudflare-dns-issuer` | Automação de Certificados SSL/TLS com Cert-Manager e Cloudflare DNS-01 | [Visualizar](./11-cert-manager-cloudflare-dns-issuer/README.md) |
| `12-keda-event-driven-autoscaler-bootstrap` | Instalação do KEDA para Autoescalonamento Orientado a Eventos | [Visualizar](./12-keda-event-driven-autoscaler-bootstrap/README.md) |
| `13-velero-backup-controller-s3-csi` | Configuração do Controlador de Disaster Recovery Velero com Snapshots CSI | [Visualizar](./13-velero-backup-controller-s3-csi/README.md) |
| `14-istio-service-mesh-ambient-mode` | Deploy do Istio Service Mesh em Modo Ambient sem Injeção de Sidecars | [Visualizar](./14-istio-service-mesh-ambient-mode/README.md) |
| `15-vault-agent-injector-sidecar-bootstrap` | Deploy do Vault Agent Injector para Injeção Automática de Segredos em Memória | [Visualizar](./15-vault-agent-injector-sidecar-bootstrap/README.md) |
| `16-nvidia-gpu-operator-deep-learning` | Instalação Automatizada do NVIDIA GPU Operator para Clusters de IA em Boston | [Visualizar](./16-nvidia-gpu-operator-deep-learning/README.md) |
| `17-metrics-server-vpa-autoscaling-stack` | Provisionamento do Metrics Server e Vertical Pod Autoscaler (VPA) | [Visualizar](./17-metrics-server-vpa-autoscaling-stack/README.md) |
| `18-opentelemetry-collector-operator-k8s` | Implantação do OpenTelemetry Collector Operator para Telemetria Unificada | [Visualizar](./18-opentelemetry-collector-operator-k8s/README.md) |
| `19-kyverno-policy-engine-bootstrap` | Deploy do Motor de Governança Kyverno com Políticas de Segurança Restritas | [Visualizar](./19-kyverno-policy-engine-bootstrap/README.md) |
| `20-traefik-hub-api-gateway-controller` | Deploy de Traefik Enterprise API Gateway com Roteamento Avançado e mTLS | [Visualizar](./20-traefik-hub-api-gateway-controller/README.md) |
