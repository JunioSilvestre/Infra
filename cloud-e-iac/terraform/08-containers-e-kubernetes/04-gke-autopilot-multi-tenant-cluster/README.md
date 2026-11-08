# Cluster GKE Autopilot com Isolamento Multi-Tenant e Workload Identity

## 1. Cenário de Produção Real
Equipe de engenharia de dados em Manhattan precisa de um ambiente Kubernetes gerenciado com zero manutenção de nós e cobrança estrita por pod.

## 2. O Problema Real
Eliminar o custo e o esforço de gerenciar nós operacionais garantindo conformidade com padrões CIS Google Benchmark.

## 3. Arquitetura e Engenharia da Solução
Provisionamento de cluster GKE em modo Autopilot com Workload Identity ativado, Private Endpoint e rede VPC-native.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Terraform, Google Cloud GKE Autopilot, Workload Identity, VPC-Native
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform apply -target=google_container_cluster.autopilot_prod
```
