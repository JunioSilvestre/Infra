# 11 — Localizador de Diretórios com Esgotamento Crítico de Inodes

## 🏢 Cenário de Negócios e Produção Real
Sistemas de arquivos que ainda têm gigabytes de espaço livre, mas acusam erro 'No space left on device' por falta de inodes livres.

### ⚠️ O Problema Real
Aplicações que geram milhões de pequenos arquivos temporários (sessões PHP, spools de e-mail) esgotam os inodes do disco.

## 🚀 Arquitetura e Engenharia em Bash
Inspeção via 'df -i', detecção de sistema de arquivos com >90% de inodes consumidos, varredura rápida com find/awk para contar número de arquivos por diretório e emissão dos top 10 maiores consumidores de inodes.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`df, find, awk, sort, head`

## 📌 Exemplo de Execução CLI
```bash
./inode_hunter.sh --filesystem /var --top 10
```
