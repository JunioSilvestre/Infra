# Controle de Contrapressão e Buffer de Memória em Agentes de Log Fluentd

## 1. Cenário de Produção Real
Servidores com picos de escrita sofriam travamentos porque o agente de logs consumia toda a memória RAM tentando processar a fila.

## 2. O Problema Real
Controlar rigidamente a contrapressão (Backpressure), limitando o tamanho dos buffers e descarregando eventos em arquivos de disco temporários.

## 3. Arquitetura e Engenharia da Solução
Ajuste no `fluent.conf` configurando blocos `<buffer>` com `chunk_limit_size 16m`, `queue_limit_length 64` e `overflow_action block`.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Fluentd Buffer Architecture, Backpressure Control, Memory Management
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
fluentd -c /etc/fluentd/fluent.conf -v
```
