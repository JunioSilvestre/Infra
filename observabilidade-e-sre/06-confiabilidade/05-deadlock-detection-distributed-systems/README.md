# Detecção e Mitigação Automatizada de Deadlocks em Sistemas Distribuídos

## 1. Cenário de Produção Real
Transações financeiras concorrentes disputavam os mesmos registros de tabelas, travando threads em deadlocks e esgotando conexões de banco.

## 2. O Problema Real
Identificar transações presas em contenção de locks e abortar de forma controlada a transação mais jovem com retry exponencial.

## 3. Arquitetura e Engenharia da Solução
Script de observabilidade e monitoramento de conexões bloqueadas via queries `pg_blocking_pids()` com telemetria Prometheus.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Distributed Deadlocks, Lock Contention, PostgreSQL Concurrency, SRE Troubleshooting
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
python detect_deadlocks.py --database-url <URL>
```
