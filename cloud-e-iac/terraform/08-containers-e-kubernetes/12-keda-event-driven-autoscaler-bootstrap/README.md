# Instalação do KEDA para Autoescalonamento Orientado a Eventos

## 1. Cenário de Produção Real
Serviços de mensageria processando filas RabbitMQ e Kafka precisavam escalar réplicas com base na quantidade de mensagens pendentes.

## 2. O Problema Real
Implantar o KEDA Operator via Terraform padronizando os CRDs de ScaledObject em todos os clusters da corporação.

## 3. Arquitetura e Engenharia da Solução
Módulo Terraform gerenciando a instalação do chart KEDA com métricas expostas e integração de segurança com IAM Roles.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Terraform, KEDA, Event-Driven Autoscaling, Kubernetes CRD
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform apply -target=helm_release.keda
```
