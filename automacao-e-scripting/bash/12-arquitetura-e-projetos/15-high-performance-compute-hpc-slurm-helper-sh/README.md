# 15 — Orquestrador de Jobs de Alta Performance (HPC) e Gestão de Filas SLURM

## 🏢 Cenário de Negócios e Produção Real
Ambientes de pesquisa acadêmica e simulação quantitativa com clusters de nós de computação gerenciados por SLURM.

### ⚠️ O Problema Real
Pesquisadores submetem jobs mal parametrizados que travam nós ou ficam dias presos em filas.

## 🚀 Arquitetura e Engenharia em Bash
Geração dinâmica de scripts de submissão 'sbatch' com parâmetros otimizados de nós, CPUs e GPUs, verificação prévia de quotas de projeto via 'sacctmgr', monitoramento de progresso com 'squeue' e coleta automática de resultados.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`sbatch, squeue, sacctmgr, awk`

## 📌 Exemplo de Execução CLI
```bash
./slurm_job_launcher.sh --nodes 4 --cpus-per-task 8 --payload ./simulation.bin
```
