# Módulo: Arquitetura e Desenvolvimento de Módulos Reutilizáveis

Construção de módulos corporativos testáveis, versionamento semântico, abstração de complexidade e registros privados.

Este módulo contém 20 projetos práticos de nível sênior baseados no dia a dia real de engenheiros de Infraestrutura em Nuvem, SRE e Platform Engineering operando em empresas de grande porte nos estados de Nova York (NY), Massachusetts (MA) e Connecticut (CT).

## Índice de Projetos

| Diretório | Nome do Projeto | Documentação |
|:---|:---|:---:|
| `01-vpc-enterprise-modular-architecture` | Módulo Corporativo de Rede VPC com Suporte Multi-AZ, NAT Gateways e Endpoints | [Visualizar](./01-vpc-enterprise-modular-architecture/README.md) |
| `02-eks-cluster-blueprint-module` | Módulo Blueprint de Cluster EKS com Karpenter, IRSA e Addons Gerenciados | [Visualizar](./02-eks-cluster-blueprint-module/README.md) |
| `03-rds-aurora-ha-failover-module` | Módulo de Banco de Dados Relacional Aurora PostgreSQL com Réplicas de Leitura | [Visualizar](./03-rds-aurora-ha-failover-module/README.md) |
| `04-private-terraform-registry-git-tags` | Distribuição e Versionamento de Módulos com Git Tags e SemVer | [Visualizar](./04-private-terraform-registry-git-tags/README.md) |
| `05-secure-s3-bucket-compliance-module` | Módulo de Bucket S3 Blindado para Conformidade Bancária e FinOps | [Visualizar](./05-secure-s3-bucket-compliance-module/README.md) |
| `06-cloudflare-dns-waf-edge-module` | Módulo de Borda de Proteção com Cloudflare DNS, WAF e Rate Limiting | [Visualizar](./06-cloudflare-dns-waf-edge-module/README.md) |
| `07-hashicorp-vault-approle-module` | Módulo de Provisionamento de Segredos e Políticas no HashiCorp Vault | [Visualizar](./07-hashicorp-vault-approle-module/README.md) |
| `08-alb-ingress-target-groups-module` | Módulo de Balanceador de Carga ALB com Roteamento Avançado por Header e TLS | [Visualizar](./08-alb-ingress-target-groups-module/README.md) |
| `09-bastion-zero-trust-ssm-module` | Módulo de Bastion Host Seguro sem Portas Abertas via AWS Systems Manager | [Visualizar](./09-bastion-zero-trust-ssm-module/README.md) |
| `10-kafka-msk-event-streaming-module` | Módulo de Cluster Apache Kafka Gerenciado (AWS MSK) com mTLS e SASL/SCRAM | [Visualizar](./10-kafka-msk-event-streaming-module/README.md) |
| `11-terratest-automated-module-testing` | Pipeline de Testes de Integração Automatizados de Módulos com Terratest em Go | [Visualizar](./11-terratest-automated-module-testing/README.md) |
| `12-datadog-monitors-dashboards-module` | Módulo de Observabilidade como Código com Monitores e Dashboards no Datadog | [Visualizar](./12-datadog-monitors-dashboards-module/README.md) |
| `13-submodule-composition-pattern` | Padrão de Composição Modular com Submódulos Aninhados Especializados | [Visualizar](./13-submodule-composition-pattern/README.md) |
| `14-opensearch-logging-cluster-module` | Módulo de Cluster AWS OpenSearch com VPC Peering e Acesso via IAM | [Visualizar](./14-opensearch-logging-cluster-module/README.md) |
| `15-crossplane-composable-infrastructure-module` | Construção de Módulos Terraform Compatíveis com Pipelines Crossplane | [Visualizar](./15-crossplane-composable-infrastructure-module/README.md) |
| `16-transit-gateway-hub-spoke-module` | Módulo de Conectividade de Redes com AWS Transit Gateway em Arquitetura Hub-and-Spoke | [Visualizar](./16-transit-gateway-hub-spoke-module/README.md) |
| `17-elasticache-redis-cluster-module` | Módulo de Cache Distribuído com AWS ElastiCache Redis e Multi-AZ Failover | [Visualizar](./17-elasticache-redis-cluster-module/README.md) |
| `18-terraform-docs-automated-ci-generation` | Automação de Documentação Técnica de Módulos com terraform-docs em Pre-commit | [Visualizar](./18-terraform-docs-automated-ci-generation/README.md) |
| `19-step-functions-serverless-pipeline-module` | Módulo de Orquestração de Fluxos Serverless com AWS Step Functions e Lambda | [Visualizar](./19-step-functions-serverless-pipeline-module/README.md) |
| `20-governed-module-factory-pattern` | Padrão Factory de Módulos Corporativos com Validação OPA Conftest no CI | [Visualizar](./20-governed-module-factory-pattern/README.md) |
