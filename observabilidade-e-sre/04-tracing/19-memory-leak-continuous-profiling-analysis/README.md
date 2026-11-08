# Diagnóstico de Vazamento de Memória em Produção com Heap Profiling Contínuo

## 1. Cenário de Produção Real
Serviços em Go e Java sofriam aumento lento e contínuo de consumo de memória RAM ao longo de semanas até serem mortos pelo OOM-Killer.

## 2. O Problema Real
Identificar quais objetos e estruturas de dados específicas estão retendo memória sem precisar reproduzir o erro localmente.

## 3. Arquitetura e Engenharia da Solução
Coleta periódica de heap profiles via Pyroscope/Go pprof acionada automaticamente quando a memória atinge 80% do limite.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Heap Profiling, Memory Leak Debugging, Go pprof, Grafana Pyroscope
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
go tool pprof -http=:8080 http://localhost:6060/debug/pprof/heap
```
