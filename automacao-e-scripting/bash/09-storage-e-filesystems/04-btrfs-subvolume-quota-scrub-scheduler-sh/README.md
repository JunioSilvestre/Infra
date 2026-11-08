# 04 — Agendador e Auditor de Btrfs Scrub e Gestão de Cotas de Subvolumes (qgroups)

## 🏢 Cenário de Negócios e Produção Real
Sistemas de arquivos Btrfs em servidores de armazenamento que necessitam de verificação de integridade de dados (silent data corruption).

### ⚠️ O Problema Real
Corrupção silenciosa de bits (Bit Rot) ocorre sem aviso em discos físicos antigos.

## 🚀 Arquitetura e Engenharia em Bash
Execução periódica de 'btrfs scrub start -B', monitoramento de erros corrigidos ou incorrigíveis, inspeção de cotas de subvolumes com 'btrfs qgroup show' e envio de laudo de saúde de dados.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`btrfs, awk, logger, mailx`

## 📌 Exemplo de Execução CLI
```bash
./btrfs_scrub_audit.sh --mount /data --report-email storage@empresa.com
```
