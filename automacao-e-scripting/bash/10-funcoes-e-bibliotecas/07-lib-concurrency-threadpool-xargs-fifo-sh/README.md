# 07 — Pool de Threads e Execução Concorrente Controlada em Bash com FIFO

## 🏢 Cenário de Negócios e Produção Real
Processamento de milhares de tarefas independentes (ex: checar 500 servidores) sem sobrecarregar a CPU do host.

### ⚠️ O Problema Real
Disparar centenas de tarefas com '&' em background sem limite esgota a memória e a tabela de processos.

## 🚀 Arquitetura e Engenharia em Bash
Implementação do padrão Thread Pool em Bash puro utilizando named pipes (mkfifo) como semáforo de controle de concorrência com N tokens, permitindo rodar exatamente N tarefas paralelas simultaneamente.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`mkfifo, exec, read, wait`

## 📌 Exemplo de Execução CLI
```bash
source lib/concurrency.sh && init_pool 8 && run_task 'ping -c1 host1' && wait_pool
```
