# 10 — Verificador Preventivo de Corrupção e Status de Montagem em Sistemas ext4/XFS

## 🏢 Cenário de Negócios e Produção Real
Servidores que sofreram queda abrupta de energia ou falha temporária de controladora de disco.

### ⚠️ O Problema Real
O sistema de arquivos entra silenciosamente em modo somente-leitura (Read-Only) para se proteger de corrupção, derrubando gravações da aplicação.

## 🚀 Arquitetura e Engenharia em Bash
Inspeção de flags de montagem em /proc/mounts buscando 'ro,', checagem de erros de metadata no dmesg e agendamento de fsck seguro no próximo reboot via touch /forcefsck ou tune2fs.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`tune2fs, xfs_info, /proc/mounts, dmesg, touch`

## 📌 Exemplo de Execução CLI
```bash
./fs_corruption_check.sh --mountpoint /data --alert-if-ro
```
