# 20 — Descomissionamento Seguro de Servidor com Sobrescrita de Dados Conforme NIST 800-88

## 🏢 Cenário de Negócios e Produção Real
Desativação definitiva de servidores físicos ou devolução de instâncias bare-metal em data centers terceirizados.

### ⚠️ O Problema Real
Discos descartados com dados residuais geram violações gravíssimas de privacidade e vazamento de segredos.

## 🚀 Arquitetura e Engenharia em Bash
Desmontagem forçada de volumes, identificação de todos os discos de bloco via lsblk, execução de wipe em múltiplas passadas (shred -n 3 -z ou blkdiscard para NVMe), gravação de certificado de sanitização assinado.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`shred, blkdiscard, lsblk, openssl, sha256sum`

## 📌 Exemplo de Execução CLI
```bash
./secure_wipe.sh --target-disk /dev/sdb --passes 3 --confirm-destroy
```
