# Tratamento Avançado de Logs Multilinha e Stacktraces com Fluent Bit

## 1. Cenário de Produção Real
Erros de exceção em Java e Python apareciam divididos em 40 linhas separadas no banco de logs, inviabilizando buscas e correlações.

## 2. O Problema Real
Agrupar blocos inteiros de stacktraces em um único evento lógico de log antes do envio para o banco de indexação.

## 3. Arquitetura e Engenharia da Solução
Configuração do filtro `multiline` nativo do Fluent Bit utilizando parsers de exceções pré-compilados (`multiline.parser java, python`).

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Fluent Bit Multiline Parsing, Stacktrace Aggregation, Java/Python Exception Handling
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
fluent-bit -i tail -p multiline.parser=java -o stdout
```
