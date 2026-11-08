# 11 — Captura Contínua de Pacotes com Ring Buffer Circular via tcpdump

## 🏢 Cenário de Negócios e Produção Real
Diagnóstico de problemas de rede intermitentes que ocorrem uma vez por semana de madrugada.

### ⚠️ O Problema Real
Rodar tcpdump contínuo lota o disco do servidor em minutos.

## 🚀 Arquitetura e Engenharia em Bash
Execução de tcpdump com parâmetros de rotação em anel (-W 10 -C 100M -G 3600), monitoramento de espaço livre em disco e preservação automática dos arquivos .pcap quando um gatilho de erro for acionado.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`tcpdump, pkill, df, find, tar`

## 📌 Exemplo de Execução CLI
```bash
./pcap_ring_buffer.sh --interface eth0 --port 443 --file-size 100 --max-files 10 --dest /var/pcap
```
