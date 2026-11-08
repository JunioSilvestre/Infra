# 19 — Benchmark de Consumo de Memória em Processamento de Arquivos Gigantes (Streaming)

## 🏢 Cenário de Negócios e Produção Real
Garantia de que scripts de tratamento de logs e backups não carreguem arquivos de gigabytes inteiros na memória RAM.

### ⚠️ O Problema Real
Scripts que usam 'var=$(cat arquivo.log)' estouram a memória do servidor com arquivos grandes.

## 🚀 Arquitetura e Engenharia em Bash
Geração de massa de dados sintética de 10GB, execução do script sob monitoramento de memória do processo (/usr/bin/time -v), validação de que o consumo de memória permanente (Max RSS) permaneceu abaixo de 50MB, comprovando o uso de streaming via pipes.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`dd, /usr/bin/time, awk`

## 📌 Exemplo de Execução CLI
```bash
./benchmark_streaming.sh --script ./parse_huge_log.sh --file-size 10G
```
