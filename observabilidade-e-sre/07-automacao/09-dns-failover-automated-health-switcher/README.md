# Comutador Autônomo de DNS Global Baseado em Testes de Saúde Sintéticos

## 1. Cenário de Produção Real
Quando o cluster primário de Nova York cair, comutar 100% do tráfego público para o cluster secundário de Ohio em menos de 60 segundos.

## 2. O Problema Real
Eliminar a necessidade de intervenção humana em desastres através de chaveamento automatizado de registros DNS com TTL ultra-baixo.

## 3. Arquitetura e Engenharia da Solução
Health checks sintéticos do AWS Route53 ou Cloudflare monitorando respostas de APIs e chaveando registros CNAME automaticamente.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Automated DNS Failover, AWS Route53 Traffic Flow, Low TTL Routing
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
aws route53 get-health-check-status --health-check-id <ID>
```
