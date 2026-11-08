# 16 — Gerenciador de Ambientes Efêmeros com OverlayFS e Memória RAM (tmpfs)

## 🏢 Cenário de Negócios e Produção Real
Ambientes de testes unitários ou compilação de software que precisam ler dados de base sem alterar o disco real.

### ⚠️ O Problema Real
Testes que gravam em disco desgastam o storage e são ordens de magnitude mais lentos que a RAM.

## 🚀 Arquitetura e Engenharia em Bash
Montagem de camada read-only a partir do diretório de produção, camada superior (upperdir) montada em memória tmpfs, montagem do overlay em /mnt/scratch e destruição atômica instantânea ao final dos testes.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`mount, umount, mkdir, rm`

## 📌 Exemplo de Execução CLI
```bash
./overlay_scratchpad.sh --lower /var/base_data --mountpoint /mnt/fast_test --cleanup
```
