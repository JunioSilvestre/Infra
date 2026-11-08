# Ajuste Fino de Compactação de Blocos TSDB e Resolução de Erros de WAL

## 1. Cenário de Produção Real
Quedas repentinas de energia ou corrupção de disco deixavam o Write-Ahead Log (WAL) do Prometheus corrompido, impedindo o boot do serviço.

## 2. O Problema Real
Restaurar o TSDB após falhas de escrita, gerenciar compactação de blocos e configurar retenção precisa por tamanho e tempo.

## 3. Arquitetura e Engenharia da Solução
Diagnóstico e reparo com comandos `promtool tsdb analyze` e flags `--storage.tsdb.retention.size=100GB` e `--storage.tsdb.wal-compression`.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Prometheus TSDB, Write-Ahead Log (WAL), promtool tsdb, Disaster Recovery
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
promtool tsdb analyze /var/lib/prometheus/data
```
