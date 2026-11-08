# 17 — Verificador Automatizado de Consistência e Rollback de Snapshots de Storage

## 🏢 Cenário de Negócios e Produção Real
Rotinas de segurança antes de aplicar atualizações de sistema ou migrações de software críticas.

### ⚠️ O Problema Real
Administradores tiram snapshots mas nunca testam se o snapshot realmente consegue ser montado e restaurado.

## 🚀 Arquitetura e Engenharia em Bash
Criação de snapshot de teste em LVM/ZFS, clonagem temporária em volume de teste, validação da integridade dos arquivos (checksums), montagem de teste e destruição do clone confirmando que o snapshot é 100% restaurável.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`lvcreate, zfs clone, mount, sha256sum, umount`

## 📌 Exemplo de Execução CLI
```bash
./verify_snapshot.sh --volume /dev/vg/prod_data --snapshot-type lvm
```
