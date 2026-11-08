# Resolução de Nomes Críticos com AWS Route53, Roteamento por Latência e DNSSEC

## 1. Cenário de Produção Real
Garantir integridade contra ataques de envenenamento de DNS e chavear tráfego automaticamente para a região secundária em falhas de datacenter.

## 2. O Problema Real
Auditoria criptográfica de registros DNS e failover automático baseado em health checks que monitoram respostas HTTP 200.

## 3. Arquitetura e Engenharia da Solução
Habilitação de Route53 DNSSEC com chave KMS assimétrica, Hosted Zones privadas e regras de Failover Routing ativo-passivo.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** AWS Route53, DNSSEC, Health Checks, Latency-Based Routing
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
aws route53 test-dns-answer --hosted-zone-id <ZONE_ID> --record-name api.corp.com --record-type A
```
