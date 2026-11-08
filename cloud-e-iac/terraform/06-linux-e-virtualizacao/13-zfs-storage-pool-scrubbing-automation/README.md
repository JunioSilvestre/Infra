# Gerenciamento e Automação de Storage ZFS com Pools RAID-Z e Expurgamento

## 1. Cenário de Produção Real
Servidores de arquivos em Cambridge armazenando petabytes de imagens médicas e sequenciamento de DNA precisavam de proteção contra corrupção silenciosa.

## 2. O Problema Real
Garantir integridade contínua de dados com checksumming automático de blocos e automação de rotinas de reparo de paridade.

## 3. Arquitetura e Engenharia da Solução
Módulo Terraform gerenciando pools ZFS em modo RAID-Z2, quotas dinâmicas de datasets, compressão LZ4 e agendamento de tarefas de scrub.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** OpenZFS on Linux, RAID-Z, Data Scrubbing, Filesystem Checksumming
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
zpool status -v && zfs list -o name,used,avail,compress,mountpoint
```
