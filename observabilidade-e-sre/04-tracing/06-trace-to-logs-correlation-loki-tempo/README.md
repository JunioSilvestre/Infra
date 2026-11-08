# Correlação Bidirecional Perfeita entre Spans do Tempo e Logs do Loki

## 1. Cenário de Produção Real
Durante um incidente, engenheiros gastavam tempo procurando manualmente nos logs o momento exato em que um trace específico falhou.

## 2. O Problema Real
Clicar em um botão no Grafana Tempo e saltar diretamente para os logs exatos gerados por aquele `trace_id` e `span_id`.

## 3. Arquitetura e Engenharia da Solução
Configuração da diretiva `derivedFields` no Grafana vinculando o datasource Loki ao Tempo e injeção do trace_id no logger estruturado.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Tempo-to-Loki Integration, Trace-to-Log Correlation, Grafana Derived Fields, SRE Velocity
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
logcli query '{app="orders"} | json | trace_id="4bf92f3577b34da6a3ce929d0e0e4736"'
```
