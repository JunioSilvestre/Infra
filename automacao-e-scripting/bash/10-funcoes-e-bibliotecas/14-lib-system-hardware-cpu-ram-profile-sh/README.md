# 14 — Profiler e Detector de Arquitetura de Hardware e Recursos do Sistema

## 🏢 Cenário de Negócios e Produção Real
Scripts que precisam adaptar seus parâmetros de paralelismo de acordo com o servidor onde estão rodando.

### ⚠️ O Problema Real
Rodar 32 threads de compilação em uma VM pequena de 2 cores causa travamento completo da máquina.

## 🚀 Arquitetura e Engenharia em Bash
Funções declarativas 'get_cpu_cores', 'get_total_ram_mb', 'get_disk_free_gb', 'is_virtual_machine', 'get_os_family' lendo diretamente de /proc/cpuinfo, /proc/meminfo e systemd-detect-virt.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`cat, /proc, awk, systemd-detect-virt`

## 📌 Exemplo de Execução CLI
```bash
source lib/sysinfo.sh && cores=$(get_cpu_cores) && ram=$(get_total_ram_mb)
```
