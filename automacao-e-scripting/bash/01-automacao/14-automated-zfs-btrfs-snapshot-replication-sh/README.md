# 14 — Automated ZFS & Btrfs Snapshot Replication Engine (Bash)

Motor de automação em Bash para criação atômica de snapshots, replicação incremental remota e retenção no padrão GFS (Grandfather-Father-Son) para sistemas de arquivos ZFS e Btrfs.

## 🏢 Cenário de Negócios (Storage & Disaster Recovery — NY/CT)
Instituições bancárias e laboratórios de pesquisa em Boston e Nova York gerenciam petabytes de dados transacionais e imagens médicas em pools ZFS/Btrfs. Este script garante que snapshots locais sejam criados a cada 15 minutos e replicados incrementalmente para um data center secundário (ex.: de Manhattan para New Jersey ou Connecticut) sem interrupção de I/O.

## 🚀 Arquitetura e Engenharia em Bash
- **Criação de Snapshots Atômicos:** `zfs snapshot -r pool/dataset@auto-$(date +%Y%m%d-%H%M%S)` ou `btrfs subvolume snapshot -r`.
- **Replicação Incremental Ponto a Ponto:** Envio em stream da diferença entre snapshots consecutivos (`zfs send -i @antigo @novo | pv -L 50M | ssh backup-server zfs recv -F pool/replica`).
- **Limitação de Banda com `pv`:** Controle de taxa de transferência para não saturar os links dedicados de telecomunicações.
- **Política de Retenção GFS:** Algoritmo em Bash para purgar automaticamente snapshots antigos (mantém: 24 horários, 7 diários, 4 semanais e 12 mensais).
- **Verificação de Checksums:** Validação de integridade pós-recebimento via `zfs list` e comparação de hashes de blocos.

## 🛠️ Ferramentas Nativas Utilizadas
- `zfs` / `btrfs` (comandos de snapshot, listagem e replicação em stream)
- `pv` (Pipe Viewer para monitoramento de taxa de transferência e limitação de banda)
- `ssh` (túnel seguro para transferência de streams de blocos)
- `date` (aritmética de datas e rotação de janelas de retenção)

## 📌 Exemplo de Execução
```bash
./zfs_replicator.sh --pool data/db --remote-target backup.dr-site.net --retention-hourly 24 --bandwidth-limit 100M
```

