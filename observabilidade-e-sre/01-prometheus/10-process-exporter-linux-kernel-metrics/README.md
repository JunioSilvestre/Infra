# Monitoramento Granular de Processos e Fios de Execução com Process Exporter

## 1. Cenário de Produção Real
O Node Exporter padrão informa o uso global de CPU do servidor, mas não aponta qual processo específico do Linux está monopolizando threads.

## 2. O Problema Real
Descobrir imediatamente o consumo de CPU, memória, I/O de disco e descritores de arquivos abertos divididos por grupo de processos.

## 3. Arquitetura e Engenharia da Solução
Deploy do `process-exporter` com arquivo de configuração de matching de processos (`cmdline` e `comm`) expondo métricas no Prometheus.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Process Exporter, Linux Process Inspection, Kernel Thread Metrics
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
curl -s http://localhost:9256/metrics | grep namedprocess_namegroup_cpu_seconds_total
```
