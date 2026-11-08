# Provisionamento da Stack Completa de Observabilidade (kube-prometheus-stack)

## 1. Cenário de Produção Real
Cluster recém-provisionado ficava às cegas sem métricas de consumo de CPU/memória e sem visualização de logs consolidados.

## 2. O Problema Real
Entregar o cluster com monitoramento ativo, alertas de SRE e dashboards prontos para as equipes de produto.

## 3. Arquitetura e Engenharia da Solução
Helm release do `kube-prometheus-stack` e Grafana Loki via Terraform, com storage persistente configurado em S3 e retenção de 30 dias.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Terraform, kube-prometheus-stack, Grafana, Loki, Prometheus Operator
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform apply -target=helm_release.monitoring_stack
```
