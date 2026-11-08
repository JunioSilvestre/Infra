# Estratégia de Backup e Disaster Recovery de Clusters com Velero e Restic

## 1. Cenário de Produção Real
Necessidade regulatória de garantir RPO < 1h e RTO < 30min para dados persistentes e manifests de recursos de clusters Kubernetes.

## 2. O Problema Real
Recuperação rápida de clusters inteiros em caso de corrupção do etcd ou exclusão acidental de namespaces críticos.

## 3. Arquitetura e Engenharia da Solução
Instalação do Velero com storage plugin para AWS S3, snapshots de EBS via CSI e backup de PVs com Restic/Kopia em cron agendado.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Velero, AWS S3, CSI Volume Snapshots, Kopia, Disaster Recovery
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
velero backup create prod-backup --include-namespaces prod-checkout && velero backup describe prod-backup
```
