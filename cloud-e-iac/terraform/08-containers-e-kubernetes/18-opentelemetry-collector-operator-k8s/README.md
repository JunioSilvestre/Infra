# Implantação do OpenTelemetry Collector Operator para Telemetria Unificada

## 1. Cenário de Produção Real
Diferentes squads usavam formatos incompatíveis de métricas e traces, dificultando a correlação de incidentes pela equipe de SRE.

## 2. O Problema Real
Padronizar a ingestão de dados de telemetria utilizando o padrão aberto OpenTelemetry com instrumentação automática de código.

## 3. Arquitetura e Engenharia da Solução
Deploy do OpenTelemetry Operator via Terraform com CRDs de `OpenTelemetryCollector` e `Instrumentation` para injeção automática de SDKs.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Terraform, OpenTelemetry Operator, OTLP, Kubernetes Auto-Instrumentation
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform apply -target=helm_release.otel_operator
```
