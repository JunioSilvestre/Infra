# Módulo: Arquitetura e Segregação de Múltiplos Ambientes

Padrões de separação entre Dev, Staging, QA e Produção com controle de blast radius, parity de ambientes e esteiras isoladas.

Este módulo contém 20 projetos práticos de nível sênior baseados no dia a dia real de engenheiros de Infraestrutura em Nuvem, SRE e Platform Engineering operando em empresas de grande porte nos estados de Nova York (NY), Massachusetts (MA) e Connecticut (CT).

## Índice de Projetos

| Diretório | Nome do Projeto | Documentação |
|:---|:---|:---:|
| `01-multi-account-aws-environment-segregation` | Segregação de Ambientes em Contas AWS Isoladas (Dev, Staging, Prod) | [Visualizar](./01-multi-account-aws-environment-segregation/README.md) |
| `02-environment-parity-drift-controller` | Garantia de Paridade de Ambientes (Dev-Prod Parity) com Terragrunt | [Visualizar](./02-environment-parity-drift-controller/README.md) |
| `03-ephemeral-pr-environments-preview` | Provisionamento Automatizado de Ambientes Efêmeros para Pull Requests | [Visualizar](./03-ephemeral-pr-environments-preview/README.md) |
| `04-disaster-recovery-standby-environment` | Provisionamento de Ambiente de Contingência Warm-Standby na Região Secundária | [Visualizar](./04-disaster-recovery-standby-environment/README.md) |
| `05-sandbox-developer-isolated-vpc` | Ambientes de Sandbox com Limite Financeiro Rígido para Experimentação | [Visualizar](./05-sandbox-developer-isolated-vpc/README.md) |
| `06-staging-anonymized-data-mirroring` | Ambiente de Homologação com Replicação de Dados Mascarados e Anonimizados | [Visualizar](./06-staging-anonymized-data-mirroring/README.md) |
| `07-blue-green-infrastructure-environment-swap` | Chaveamento Completo de Infraestrutura Blue-Green via DNS e Roteamento | [Visualizar](./07-blue-green-infrastructure-environment-swap/README.md) |
| `08-air-gapped-onprem-environment-parity` | Paridade de Ambientes entre Nuvem Pública e Datacenter Air-Gapped | [Visualizar](./08-air-gapped-onprem-environment-parity/README.md) |
| `09-performance-testing-isolated-environment` | Ambiente de Testes de Carga Efêmero com Dimensionamento Idêntico a Produção | [Visualizar](./09-performance-testing-isolated-environment/README.md) |
| `10-compliance-audit-isolated-environment` | Ambiente Espelho para Auditoria e Certificação SOC 2 / PCI-DSS | [Visualizar](./10-compliance-audit-isolated-environment/README.md) |
| `11-multi-region-latency-testing-ring` | Anéis de Deploy Regionais com Ambientes Escalonados por Fuso Horário | [Visualizar](./11-multi-region-latency-testing-ring/README.md) |
| `12-legacy-coexistence-hybrid-environment` | Ambiente de Coexistência Híbrida entre Sistemas Legados e Nova Plataforma | [Visualizar](./12-legacy-coexistence-hybrid-environment/README.md) |
| `13-cost-effective-dev-environment-sharing` | Consolidação de Múltiplos Times em Ambientes Compartilhados com Governança | [Visualizar](./13-cost-effective-dev-environment-sharing/README.md) |
| `14-feature-branch-microservices-routing` | Roteamento Dinâmico de Ambientes de Branch de Microsserviços sem Duplicação | [Visualizar](./14-feature-branch-microservices-routing/README.md) |
| `15-disaster-recovery-pilot-light-environment` | Ambiente Pilot Light para Recuperação de Desastres com RPO Quase Zero | [Visualizar](./15-disaster-recovery-pilot-light-environment/README.md) |
| `16-chaos-engineering-isolated-environment` | Ambiente Dedicado para Práticas de Engenharia de Caos e GameDays de SRE | [Visualizar](./16-chaos-engineering-isolated-environment/README.md) |
| `17-isolated-pci-scope-environment` | Isolamento Físico de Ambiente sob Escopo PCI-DSS para Redução de Custo de Auditoria | [Visualizar](./17-isolated-pci-scope-environment/README.md) |
| `18-local-developer-environment-mocking` | Ambiente Local de Desenvolvimento Espelhado com LocalStack e Docker | [Visualizar](./18-local-developer-environment-mocking/README.md) |
| `19-multi-cloud-dr-failover-environment` | Ambiente de Contingência Multi-Nuvem entre AWS e Google Cloud Platform | [Visualizar](./19-multi-cloud-dr-failover-environment/README.md) |
| `20-governed-environment-teardown-engine` | Motor Automatizado de Desligamento Noturno e Destruição de Ambientes Inativos | [Visualizar](./20-governed-environment-teardown-engine/README.md) |
