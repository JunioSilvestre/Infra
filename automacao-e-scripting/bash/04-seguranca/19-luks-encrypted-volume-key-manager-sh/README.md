# 19 — Gerenciador de Slots de Chave e Rotação Criptográfica de Volumes LUKS

## 🏢 Cenário de Negócios e Produção Real
Servidores com discos criptografados (LUKS/dm-crypt) em data centers terceirizados necessitando de rotação periódica de passphrases.

### ⚠️ O Problema Real
Trocar a senha de um disco LUKS incorretamente inutiliza os dados do volume para sempre.

## 🚀 Arquitetura e Engenharia em Bash
Inspeção de slots ativos com 'cryptsetup luksDump', adição atômica de nova chave em slot livre, validação da nova chave com 'cryptsetup open --test-passphrase' e remoção segura do slot antigo.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`cryptsetup, shred, dd, logger`

## 📌 Exemplo de Execução CLI
```bash
./luks_rotate.sh --device /dev/sdb1 --new-key-file /dev/shm/new.key --old-slot 1
```
