# Monitoramento Sintético de Endpoints Críticos com Prometheus Blackbox Exporter

## 1. Cenário de Produção Real
Saber se uma API pública de pagamentos está funcionando do ponto de vista do usuário final externo antes que clientes comecem a reclamar.

## 2. O Problema Real
Métricas internas reportavam saúde normal nos pods, mas balanceadores externos ou firewalls estavam bloqueando conexões externas.

## 3. Arquitetura e Engenharia da Solução
Deploy do Blackbox Exporter executando sondagens HTTP, TCP, ICMP e DNS com validação de status HTTP 200 e expiração de certificados TLS.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Prometheus Blackbox Exporter, Synthetic Monitoring, TLS Expiration Probes
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
curl 'http://blackbox:9115/probe?target=https://api.corp.internal&module=http_2xx'
```
