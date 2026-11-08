# 20 — Monitor e Caçador de Vazamentos de PIDs e Sub-cgroups de Containers

## 🏢 Cenário de Negócios e Produção Real
Servidores com milhares de execuções de containers onde processos filhos permanecem vivos no host após a morte do container.

### ⚠️ O Problema Real
Processos zumbis no host esgotam o limite de processos do kernel (kernel.pid_max) ou cgroup pids.max.

## 🚀 Arquitetura e Engenharia em Bash
Inspeção do sistema de arquivos cgroups (/sys/fs/cgroup/system.slice/docker-*.scope/pids.current), identificação de cgroups órfãos sem container associado no Docker/containerd e envio de SIGKILL para purga dos processos presos.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`cat, /sys/fs/cgroup, ps, kill, awk`

## 📌 Exemplo de Execução CLI
```bash
./cgroup_pid_cleaner.sh --kill-orphans --log /var/log/cgroup_leaks.log
```
