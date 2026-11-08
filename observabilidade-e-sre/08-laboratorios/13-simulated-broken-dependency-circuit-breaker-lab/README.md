# Laboratório de Resiliência com Circuit Breaker contra Serviços Lentos

## 1. Cenário de Produção Real
Validar se a biblioteca de circuit breaker realmente abre o circuito quando um serviço downstream passa a responder com 2 segundos de atraso.

## 2. O Problema Real
Garantir que chamadas subsequentes sejam interrompidas imediatamente em milissegundos sem sobrecarregar a rede interna.

## 3. Arquitetura e Engenharia da Solução
Injeção de latência em mock server, medição do tempo de abertura do disjuntor de software e posterior recuperação automática (half-open).

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Circuit Breaker Testing, Resilient Client Libraries, Fault Injection Drills
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
curl -i http://localhost:8080/api/checkout
```
