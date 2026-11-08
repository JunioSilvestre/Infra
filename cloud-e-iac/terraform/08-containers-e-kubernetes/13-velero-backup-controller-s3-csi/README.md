# Configuração do Controlador de Disaster Recovery Velero com Snapshots CSI

## 1. Cenário de Produção Real
Garantir conformidade regulatória realizando backups automáticos diários de todos os manifests do cluster e volumes persistentes EBS.

## 2. O Problema Real
Automatizar a instalação do Velero conectado a um bucket S3 corporativo com criptografia KMS e agendamentos cron nativos.

## 3. Arquitetura e Engenharia da Solução
Instalação do Velero via Helm, criação de bucket S3 com bloqueio imutável e configuração de BackupStorageLocation e VolumeSnapshotLocation.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Terraform, Velero, AWS S3, CSI Volume Snapshots, Disaster Recovery
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform apply -target=helm_release.velero
```
