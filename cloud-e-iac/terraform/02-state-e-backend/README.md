# Módulo: Gestão de Estado, Backends Remotos e Travamento Distribuído

Armazenamento em S3 com DynamoDB, migração de backends, recuperação de estado corrompido e auditoria de concorrência.

Este módulo contém 20 projetos práticos de nível sênior baseados no dia a dia real de engenheiros de Infraestrutura em Nuvem, SRE e Platform Engineering operando em empresas de grande porte nos estados de Nova York (NY), Massachusetts (MA) e Connecticut (CT).

## Índice de Projetos

| Diretório | Nome do Projeto | Documentação |
|:---|:---|:---:|
| `01-s3-dynamodb-state-locking-ha` | Arquitetura de Backend Remoto Resiliente com S3, Versionamento e DynamoDB Lock | [Visualizar](./01-s3-dynamodb-state-locking-ha/README.md) |
| `02-state-disaster-recovery-s3-versioning` | Recuperação de Desastre e Rollback de Estado Corrompido a Partir de Versões S3 | [Visualizar](./02-state-disaster-recovery-s3-versioning/README.md) |
| `03-cross-account-assume-role-backend` | Acesso a Estado Remoto em Arquitetura Multi-Contas AWS com AssumeRole | [Visualizar](./03-cross-account-assume-role-backend/README.md) |
| `04-terraform-state-split-micro-states` | Desacoplamento de Monólito de Estado em Micro-Estados Isolados | [Visualizar](./04-terraform-state-split-micro-states/README.md) |
| `05-emergency-state-unlock-dynamodb` | Procedimento Seguro de Desbloqueio Emergencial de Estado (terraform force-unlock) | [Visualizar](./05-emergency-state-unlock-dynamodb/README.md) |
| `06-sensitive-data-leak-state-scrubbing` | Higienização e Remoção de Segredos Vazados Dentro do Arquivo de Estado | [Visualizar](./06-sensitive-data-leak-state-scrubbing/README.md) |
| `07-azure-blob-storage-state-lease` | Implementação de Backend Remoto no Azure Blob Storage com Bloqueio de Lease | [Visualizar](./07-azure-blob-storage-state-lease/README.md) |
| `08-terraform-cloud-workspaces-remote-execution` | Migração de Estado Local para Terraform Cloud com Execução Remota em Equipe | [Visualizar](./08-terraform-cloud-workspaces-remote-execution/README.md) |
| `09-state-import-brownfield-resources` | Importação Declarativa de Infraestrutura Legada com Bloco import (Terraform 1.5+) | [Visualizar](./09-state-import-brownfield-resources/README.md) |
| `10-s3-cross-region-state-replication` | Replicação Geográfica Ativa de Estado entre Regiões AWS para Disaster Recovery | [Visualizar](./10-s3-cross-region-state-replication/README.md) |
| `11-terraform-state-rm-surgical-decouple` | Remoção Cirúrgica de Recursos do Estado sem Destruição Física na Nuvem | [Visualizar](./11-terraform-state-rm-surgical-decouple/README.md) |
| `12-encrypted-local-state-security-audit` | Proteção Criptográfica de Arquivos de Estado em Estações de Trabalho Locais | [Visualizar](./12-encrypted-local-state-security-audit/README.md) |
| `13-state-drift-automated-nightly-scanner` | Detector Automatizado de Derivação de Configuração com Alerta no Slack | [Visualizar](./13-state-drift-automated-nightly-scanner/README.md) |
| `14-multi-tenant-workspace-state-isolation` | Segregação de Ambientes Multi-Tenant com Terraform Workspaces Nativos | [Visualizar](./14-multi-tenant-workspace-state-isolation/README.md) |
| `15-state-mv-cross-module-refactoring` | Movimentação Transparente de Recursos entre Módulos sem Downtime | [Visualizar](./15-state-mv-cross-module-refactoring/README.md) |
| `16-dynamodb-ttl-lock-cleanup-guard` | Automação de Limpeza de Registros Órfãos na Tabela de Lock do DynamoDB | [Visualizar](./16-dynamodb-ttl-lock-cleanup-guard/README.md) |
| `17-gitlab-http-managed-terraform-state` | Gerenciamento de Estado Remoto via Backend HTTP Nativo do GitLab CI/CD | [Visualizar](./17-gitlab-http-managed-terraform-state/README.md) |
| `18-partial-state-recovery-corrupted-apply` | Diagnóstico e Recuperação de Falhas Parciais de Execução no Estado | [Visualizar](./18-partial-state-recovery-corrupted-apply/README.md) |
| `19-gcs-bucket-state-locking-gcp` | Gestão de Estado no Google Cloud Storage (GCS) com Bloqueio Nativo | [Visualizar](./19-gcs-bucket-state-locking-gcp/README.md) |
| `20-state-backup-immutable-air-gap-vault` | Cópia Imutável de Estados de Produção para Cofre Isolado (WORM Storage) | [Visualizar](./20-state-backup-immutable-air-gap-vault/README.md) |
