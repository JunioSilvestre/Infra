# Módulo: Hardening, Segurança Ofensiva/Defensiva e DevSecOps em Containers

Conformidade CIS Benchmark, auditoria com Falco, políticas OPA Gatekeeper e isolamento avançado de workloads.

Este módulo contém 20 projetos práticos de nível sênior baseados no dia a dia real de engenheiros de SRE, DevOps e Plataforma operando em empresas de alta escala (Fintechs, Hospitais, Seguradoras e Big Techs) nos polos de Nova York (NY), Massachusetts (MA) e Connecticut (CT).

## Índice de Projetos

| Diretório | Nome do Projeto | Documentação |
|:---|:---|:---:|
| `01-falco-ebpf-runtime-security-threats` | Detecção de Intrusões em Tempo Real com Falco e eBPF em Cargas de Produção | [Visualizar](./01-falco-ebpf-runtime-security-threats/README.md) |
| `02-opa-gatekeeper-cis-benchmark-k8s` | Imposição Estrita de Políticas CIS Benchmark com OPA Gatekeeper | [Visualizar](./02-opa-gatekeeper-cis-benchmark-k8s/README.md) |
| `03-kube-bench-automated-cis-compliance` | Auditoria Automatizada do Plano de Controle e Nós com Kube-Bench | [Visualizar](./03-kube-bench-automated-cis-compliance/README.md) |
| `04-pod-security-standards-restricted-mode` | Migração e Implementação de Pod Security Standards no Modo Restricted | [Visualizar](./04-pod-security-standards-restricted-mode/README.md) |
| `05-teleport-zero-trust-kubernetes-access` | Acesso Seguro Zero-Trust com Teleport e Gravação de Sessões de Kubectl | [Visualizar](./05-teleport-zero-trust-kubernetes-access/README.md) |
| `06-vault-secrets-operator-vso-sync` | Injeção Dinâmica de Segredos do HashiCorp Vault via Vault Secrets Operator | [Visualizar](./06-vault-secrets-operator-vso-sync/README.md) |
| `07-trivy-operator-continuous-cve-triage` | Triagem e Auditoria Contínua de Vulnerabilidades no Cluster com Trivy Operator | [Visualizar](./07-trivy-operator-continuous-cve-triage/README.md) |
| `08-apparmor-seccomp-custom-profiles` | Blindagem de Chamadas de Sistema com Perfis Customizados de Seccomp e AppArmor | [Visualizar](./08-apparmor-seccomp-custom-profiles/README.md) |
| `09-kubelet-node-hardening-cis` | Hardening e Blindagem da Configuração do Kubelet e Kube-Proxy em Nós de Produção | [Visualizar](./09-kubelet-node-hardening-cis/README.md) |
| `10-etcd-encryption-at-rest-kms` | Criptografia em Repouso do etcd com Provedor AWS KMS / Vault | [Visualizar](./10-etcd-encryption-at-rest-kms/README.md) |
| `11-container-drifting-detection-falco` | Detecção e Bloqueio de Alteração de Binários em Disco (Container Drift) | [Visualizar](./11-container-drifting-detection-falco/README.md) |
| `12-cosign-admission-webhook-enforcement` | Bloqueio de Imagens Não Verificadas com Webhook de Admissão Cosign | [Visualizar](./12-cosign-admission-webhook-enforcement/README.md) |
| `13-service-account-token-automount-security` | Mitigação de Roubo de Credenciais Desativando Automount de Tokens de ServiceAccount | [Visualizar](./13-service-account-token-automount-security/README.md) |
| `14-rbac-privilege-escalation-audit-krane` | Auditoria e Eliminação de Brechas de Escalação de Privilégios RBAC com Krane | [Visualizar](./14-rbac-privilege-escalation-audit-krane/README.md) |
| `15-defense-in-depth-network-segmentation` | Segmentação em Camadas de Redes de Produção com Cilium e Deny-All Padrão | [Visualizar](./15-defense-in-depth-network-segmentation/README.md) |
| `16-kube-hunter-penetration-testing` | Simulação de Ataques e Testes de Intrusão em Clusters com Kube-Hunter | [Visualizar](./16-kube-hunter-penetration-testing/README.md) |
| `17-certificate-pinning-mtls-linkerd` | Criptografia Ponto a Ponto e TLS Mútuo Estrito com Linkerd Mesh | [Visualizar](./17-certificate-pinning-mtls-linkerd/README.md) |
| `18-container-vulnerability-sla-remediation` | Automação de Notificação e SLA de Correção de Vulnerabilidades no Jira/GitLab | [Visualizar](./18-container-vulnerability-sla-remediation/README.md) |
| `19-kubernetes-audit-logging-splunk-siem` | Coleta e Auditoria de Chamadas de API do Kubernetes no Splunk SIEM | [Visualizar](./19-kubernetes-audit-logging-splunk-siem/README.md) |
| `20-ebpf-hidden-malware-detector-tetragon` | Segurança de Kernel em Nível de Instrução com Cilium Tetragon | [Visualizar](./20-ebpf-hidden-malware-detector-tetragon/README.md) |
