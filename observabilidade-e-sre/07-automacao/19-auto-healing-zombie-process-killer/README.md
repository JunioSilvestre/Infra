# Eliminador Autônomo de Processos Zumbis e Filhos Órfãos no Linux

## 1. Cenário de Produção Real
Aplicações com falhas de gerenciamento de threads acumulavam milhares de processos no estado `Z` (Zombie), esgotando a tabela de PIDs do host.

## 2. O Problema Real
Detectar processos órfãos e enviar sinal `SIGCHLD` para o processo pai ou encerrar graciosamente o pai para que o PID 1 recolha o processo.

## 3. Arquitetura e Engenharia da Solução
Script SRE executado a cada 1 minuto varrendo `/proc` e inspecionando o campo de estado da tabela de processos do Linux.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Zombie Processes, Linux PID Table, SIGCHLD Signal Handling, Process Management
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
ps aux | awk '$8 ~ /Z/ {print $2}'
```
