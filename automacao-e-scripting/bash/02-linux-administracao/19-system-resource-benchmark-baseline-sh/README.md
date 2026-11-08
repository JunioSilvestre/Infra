# 19 — Gerador de Linha de Base (Baseline) de Desempenho e Recursos do Servidor

## 🏢 Cenário de Negócios e Produção Real
Homologação de novos nós de infraestrutura antes de entrar no pool de produção.

### ⚠️ O Problema Real
Servidores com discos defeituosos ou RAM degradada entram no cluster e causam instabilidades inexplicáveis sob carga.

## 🚀 Arquitetura e Engenharia em Bash
Execução automatizada de testes controlados de CPU, I/O com dd/fio em modo direct, throughput de memória e gravação do relatório baseline em /var/log/baseline.json.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`fio, dd, sysbench, iperf3, jq`

## 📌 Exemplo de Execução CLI
```bash
./run_baseline.sh --duration 120 --export-json /tmp/baseline.json
```
