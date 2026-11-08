# Laboratório Prático de Localização de Vazamento de Memória com Pyroscope

## 1. Cenário de Produção Real
Aprender a diagnosticar a causa raiz de vazamento de memória em tempo de execução sem acesso direto ao ambiente de desenvolvimento.

## 2. O Problema Real
Identificar a função exata e estrutura de dados que está retendo objetos na memória através de Flamegraphs do Grafana Pyroscope.

## 3. Arquitetura e Engenharia da Solução
Aplicação com bug intencional de leak em array estático, coleta contínua de heap profile e identificação visual do problema no painel.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Grafana Pyroscope, Heap Profiling, Memory Leak Triage, Go pprof
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
go tool pprof http://localhost:6060/debug/pprof/heap
```
