# 14 — Detector de Vazamento de File Descriptors e Ajuste Dinâmico de Ulimit

## 🏢 Cenário de Negócios e Produção Real
Bancos de dados e servidores web de alto tráfego que atingem o limite de 'Too many open files'.

### ⚠️ O Problema Real
Atingir o límite maximo de file descriptors causa recusa imediata de conexões TCP e falha em operações de I/O.

## 🚀 Arquitetura e Engenharia em Bash
Inspeção em tempo real de /proc/sys/fs/file-nr e /proc/[pid]/fd/, identificação de processos com crescimento anormal de FDs, comparação com limites em /etc/security/limits.conf.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`lsof, /proc, awk, sort, sysctl`

## 📌 Exemplo de Execução CLI
```bash
./fd_leak_detector.sh --threshold 80 --target-service nginx
```
