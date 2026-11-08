# Correlação Criptográfica de Identidade de Microsserviços com SPIFFE e Tracing

## 1. Cenário de Produção Real
Garantir comprovação criptográfica de que a chamada rastreada partiu realmente do container legítimo e autorizado da aplicação.

## 2. O Problema Real
Associar a identidade criptográfica emitida pelo SPIFFE/SPIRE (SPIFFE ID) como atributo imutável dentro dos spans de rastreamento.

## 3. Arquitetura e Engenharia da Solução
Interceptor de segurança lendo o certificado x509 do mTLS local e injetando `spiffe.id` nos metadados de rastreabilidade.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** SPIFFE/SPIRE, Cryptographic Identity, Zero-Trust Tracing, Security Auditing
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
spire-agent api fetch x509
```
