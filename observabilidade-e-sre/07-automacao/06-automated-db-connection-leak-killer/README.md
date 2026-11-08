# Terminador Automatizado de Conexões Travadas e Ociosas em Banco de Dados

## 1. Cenário de Produção Real
Aplicações com falhas em pools de conexão deixavam centenas de conexões em estado `idle in transaction`, travando novas escritas no PostgreSQL.

## 2. O Problema Real
Monitorar conexões ociosas há mais de 10 minutos e encerrá-las de forma segura antes que esgotem o limite `max_connections`.

## 3. Arquitetura e Engenharia da Solução
Job agendado executando `SELECT pg_terminate_backend(pid)` em conexões órfãs que ultrapassem os limites de tempo seguro de execução.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** PostgreSQL Connection Hygiene, pg_terminate_backend, Database SRE
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
python kill_idle_transactions.py --max-idle-seconds 600
```
