# 15 — Testador e Homologador de IOPS e Throughput de Storage com FIO (Flexible I/O Tester)

## 🏢 Cenário de Negócios e Produção Real
Validação de discos de novos servidores antes de colocar bancos de dados em produção.

### ⚠️ O Problema Real
Controladoras de disco com cache write-through desativado ou cabos lentos entregam apenas 10% da velocidade esperada.

## 🚀 Arquitetura e Engenharia em Bash
Execução automatizada de perfis FIO padronizados (leitura/escrita aleatória 4k para IOPS e leitura sequencial 1M para largura de banda), cálculo de latência média e geração de laudo comparativo.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`fio, jq, awk, date`

## 📌 Exemplo de Execução CLI
```bash
./benchmark_storage.sh --target-dir /mnt/nvme --profile randwrite --runtime 60
```
