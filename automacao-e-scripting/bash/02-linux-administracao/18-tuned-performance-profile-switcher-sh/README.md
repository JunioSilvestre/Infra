# 18 — Alternador Dinâmico de Perfis de Performance Tuned e Kernel Sysctl

## 🏢 Cenário de Negócios e Produção Real
Servidores de banco de dados e computação de alta performance que exigem otimizações específicas de I/O de disco e rede.

### ⚠️ O Problema Real
Perfis padrão de Linux mantêm economia de energia ativa e escalonamento de CPU conservador, reduzindo throughput de rede.

## 🚀 Arquitetura e Engenharia em Bash
Detecção de hardware (NUMA nodes, tipo de disco NVMe) e tipo de carga, aplicação de perfil via tuned-adm (throughput-performance, latency-performance) e ajuste fino de vm.dirty_ratio e net.core.somaxconn.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`tuned-adm, sysctl, numactl, lshw`

## 📌 Exemplo de Execução CLI
```bash
./perf_tuner.sh --profile throughput-performance --verify
```
