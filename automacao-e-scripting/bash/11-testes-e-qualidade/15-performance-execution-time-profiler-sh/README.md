# 15 — Profiler Linha a Linha de Tempo de Execução e Gargalos de Performance em Bash

## 🏢 Cenário de Negócios e Produção Real
Otimização de scripts de boot de infraestrutura ou pipelines lentos.

### ⚠️ O Problema Real
O script demora 5 minutos para rodar e ninguém sabe em qual comando ou subshell o tempo está sendo gasto.

## 🚀 Arquitetura e Engenharia em Bash
Habilitação do modo de rastreamento com timestamp de alta resolução no prompt de debug (PS4='+ $(date +%s%N) ${BASH_SOURCE}:${LINENO}: '), execução completa com 'bash -x' e parsing dos deltas de tempo para listar as 10 linhas mais lentas.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`date, awk, sort, bash -x`

## 📌 Exemplo de Execução CLI
```bash
./profile_script.sh --script ./provision_node.sh --top 10
```
