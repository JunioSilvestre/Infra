# 06 — Detector e Exterminador de Processos Zumbis e Órfãos

## 🏢 Cenário de Negócios e Produção Real
Servidores com aplicações Java/Node.js legadas que geram centenas de processos 'defunct' ocupando a tabela de PIDs do kernel.

### ⚠️ O Problema Real
Tabela de PIDs atinge o limite do kernel (pid_max), impedindo novos processos de serem criados.

## 🚀 Arquitetura e Engenharia em Bash
Varredura do /proc e ps aux buscando estado Z, identificação do processo pai (PPID), envio controlado de SIGCHLD para o pai forçar o wait() ou SIGKILL no pai se for negligente.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`ps, awk, kill, /proc, sysctl`

## 📌 Exemplo de Execução CLI
```bash
./zombie_reaper.sh --scan-interval 60 --notify-parent --auto-kill
```
