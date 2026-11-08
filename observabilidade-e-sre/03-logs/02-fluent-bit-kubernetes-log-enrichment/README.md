# Coleta e Enriquecimento de Logs em Kubernetes com Fluent Bit DaemonSet

## 1. Cenário de Produção Real
Logs brutos de containers gravados em `/var/log/pods` continham apenas strings soltas sem identificação da versão da aplicação ou nó.

## 2. O Problema Real
Interromper o consumo de disco do nó, filtrar logs de debug e enriquecer automaticamente cada linha com metadados do Kubernetes.

## 3. Arquitetura e Engenharia da Solução
Deploy de DaemonSet do Fluent Bit com parser JSON, filtro `kubernetes` ativado e buffer de memória e disco (buffering on disk).

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Fluent Bit, Kubernetes Metadata Enrichment, Regex Parsers, Linux Logging
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
fluent-bit -c /etc/fluent-bit/fluent-bit.conf
```
