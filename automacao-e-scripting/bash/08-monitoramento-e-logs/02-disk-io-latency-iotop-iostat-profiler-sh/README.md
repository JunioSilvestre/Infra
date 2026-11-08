# 02 — Profiler de Latência de I/O de Disco em Tempo Real com iostat e iotop

## 🏢 Cenário de Negócios e Produção Real
Servidores de banco de dados onde consultas sofrem travamentos por gargalos repentinos de leitura e escrita em disco.

### ⚠️ O Problema Real
O uso de CPU e memória parece baixo, mas a aplicação está travada aguardando I/O (iowait elevado).

## 🚀 Arquitetura e Engenharia em Bash
Captura periódica com 'iostat -xz 1 5', cálculo do tempo médio de espera (%util, await, r_await, w_await), correlação com processos que mais escrevem via 'iotop -b -n 1' e gravação de dossiê do gargalo.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`iostat, iotop, awk, sort, date`

## 📌 Exemplo de Execução CLI
```bash
./io_profiler.sh --await-threshold-ms 20 --duration 60 --dest /tmp/io_report
```
