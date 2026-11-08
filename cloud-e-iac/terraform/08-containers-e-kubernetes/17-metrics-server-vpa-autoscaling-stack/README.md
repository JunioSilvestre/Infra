# Provisionamento do Metrics Server e Vertical Pod Autoscaler (VPA)

## 1. Cenário de Produção Real
Desenvolvedores superdimensionavam as solicitações de CPU e memória de seus pods, gerando desperdício massivo de capacidade do cluster.

## 2. O Problema Real
Ajustar automaticamente os requests e limits dos containers com base no histórico real de consumo observado pelo VPA.

## 3. Arquitetura e Engenharia da Solução
Deploy do Metrics Server e do Vertical Pod Autoscaler (VPA) via Terraform com recomendações ativadas em namespaces de desenvolvimento.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Terraform, Kubernetes Metrics Server, Vertical Pod Autoscaler (VPA), FinOps
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform apply -target=module.vpa_stack
```
