# Módulo de Observabilidade como Código com Monitores e Dashboards no Datadog

## 1. Cenário de Produção Real
Engenheiros esqueciam de criar alertas após subir novos microsserviços, fazendo com que incidentes fossem descobertos pelos clientes.

## 2. O Problema Real
Criar automaticamente monitores de APM, alertas de latência p99, taxas de erro e dashboards padrão no momento em que o microsserviço é provisionado.

## 3. Arquitetura e Engenharia da Solução
Módulo Datadog provisionando `datadog_monitor`, `datadog_dashboard` e regras de escalonamento integradas ao PagerDuty corporativo.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Datadog Provider, APM Monitors, PagerDuty Integration, SRE Observability
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform apply -target=module.service_observability
```
