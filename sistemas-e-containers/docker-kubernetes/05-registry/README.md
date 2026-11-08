# Módulo: Gestão Corporativa de Registries e Ciclo de Vida de Imagens

Armazenamento seguro, replicação geográfica, escaneamento contínuo de vulnerabilidades e governança de artefatos OCI.

Este módulo contém 20 projetos práticos de nível sênior baseados no dia a dia real de engenheiros de SRE, DevOps e Plataforma operando em empresas de alta escala (Fintechs, Hospitais, Seguradoras e Big Techs) nos polos de Nova York (NY), Massachusetts (MA) e Connecticut (CT).

## Índice de Projetos

| Diretório | Nome do Projeto | Documentação |
|:---|:---|:---:|
| `01-harbor-enterprise-ha-replication` | Arquitetura de Harbor Enterprise em Alta Disponibilidade com Replicação Multi-Região | [Visualizar](./01-harbor-enterprise-ha-replication/README.md) |
| `02-trivy-harbor-automated-scheduled-scan` | Escaneamento Contínuo e Bloqueio de Imagens Vulneráveis no Harbor Registry | [Visualizar](./02-trivy-harbor-automated-scheduled-scan/README.md) |
| `03-cosign-keyless-signature-sigstore` | Assinatura Criptográfica de Imagens sem Chave (Keyless) com Sigstore e Cosign | [Visualizar](./03-cosign-keyless-signature-sigstore/README.md) |
| `04-harbor-tag-retention-cleanup-rules` | Governança de Storage e Políticas de Retenção de Imagens no Registry | [Visualizar](./04-harbor-tag-retention-cleanup-rules/README.md) |
| `05-image-pull-through-cache-ecr-dockerhub` | Implementação de Pull-Through Cache no AWS ECR para Docker Hub e Quay | [Visualizar](./05-image-pull-through-cache-ecr-dockerhub/README.md) |
| `06-immutable-tags-policy-enforcement` | Garantia de Imutabilidade Estrita de Tags de Imagem no Registry | [Visualizar](./06-immutable-tags-policy-enforcement/README.md) |
| `07-sbom-generation-syft-cyclonedx` | Geração e Publicação de Software Bill of Materials (SBOM) no Registry OCI | [Visualizar](./07-sbom-generation-syft-cyclonedx/README.md) |
| `08-registry-geo-routing-route53-latency` | Roteamento de Pull de Imagens Baseado em Menor Latência de Rede Global | [Visualizar](./08-registry-geo-routing-route53-latency/README.md) |
| `09-rate-limit-mitigation-proxy-cache` | Deploy de Cache Proxy Transparente com Docker Registry e Nginx | [Visualizar](./09-rate-limit-mitigation-proxy-cache/README.md) |
| `10-air-gapped-registry-migration-skopeo` | Sincronização de Imagens para Ambientes Isolados (Air-Gapped) com Skopeo | [Visualizar](./10-air-gapped-registry-migration-skopeo/README.md) |
| `11-admission-controller-ratify-notation` | Bloqueio de Imagens Não Assinadas no Kubernetes com Gatekeeper e Ratify | [Visualizar](./11-admission-controller-ratify-notation/README.md) |
| `12-ecr-cross-account-iam-roles-irsa` | Acesso Multi-Contas a Repositórios ECR com Permissões IAM de Mínimo Privilégio | [Visualizar](./12-ecr-cross-account-iam-roles-irsa/README.md) |
| `13-harbor-robot-accounts-ci-automation` | Gerenciamento de Robot Accounts com Escopo de Mínimo Privilégio no Harbor | [Visualizar](./13-harbor-robot-accounts-ci-automation/README.md) |
| `14-container-image-size-audit-dive` | Auditoria Automatizada de Eficiência de Camadas de Imagem com Dive no CI | [Visualizar](./14-container-image-size-audit-dive/README.md) |
| `15-crane-fast-registry-operations` | Operações Rápidas de Inspeção e Cópia de Imagens sem Docker Daemon com Crane | [Visualizar](./15-crane-fast-registry-operations/README.md) |
| `16-ecr-lifecycle-policy-cost-reduction` | Políticas Automatizadas de Expurgamento de Artefatos no AWS ECR (FinOps) | [Visualizar](./16-ecr-lifecycle-policy-cost-reduction/README.md) |
| `17-webhook-notification-slack-trivy` | Notificação em Tempo Real de Vulnerabilidades Críticas de Imagens via Slack | [Visualizar](./17-webhook-notification-slack-trivy/README.md) |
| `18-harbor-oidc-okta-integration` | Autenticação Corporativa e Single Sign-On (SSO) no Registry com Okta e OIDC | [Visualizar](./18-harbor-oidc-okta-integration/README.md) |
| `19-slsa-provenance-attestation-generator` | Geração de Atestados de Procedência de Software (SLSA Nível 3) para Containers | [Visualizar](./19-slsa-provenance-attestation-generator/README.md) |
| `20-docker-content-trust-notary-v2` | Validação de Confiança de Conteúdo e Integridade de Imagens com Notary v2 | [Visualizar](./20-docker-content-trust-notary-v2/README.md) |
