# Gerenciamento de Sessões de Usuário em Alta Disponibilidade com Redis Sentinel

## 1. Cenário de Produção Real
A reinicialização de um servidor de cache desconectava 50.000 usuários simultâneos, forçando novo login e gerando sobrecarga de auth.

## 2. O Problema Real
Garantir persistência de sessões em cluster de cache com failover automático e replicação síncrona em menos de 1 segundo.

## 3. Arquitetura e Engenharia da Solução
Deploy de cluster Redis com 3 nós gerenciados por daemons Redis Sentinel monitorando saúde e promovendo réplicas dinamicamente.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Redis Sentinel, High Availability In-Memory Cache, Session State Management
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
redis-cli -p 26379 sentinel master mymaster
```
