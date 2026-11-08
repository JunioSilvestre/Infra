# Implementação Automatizada de Motor de Políticas de Rede com Calico Operator

## 1. Cenário de Produção Real
Auditoria regulatória exigia que todo pod em execução tivesse regras de isolamento explícitas contra movimentação lateral.

## 2. O Problema Real
Instalar o Calico Operator e provisionar políticas de rede globais de default-deny no momento do bootstrap do cluster.

## 3. Arquitetura e Engenharia da Solução
Provisionamento do operador Tigera Calico via Terraform e injeção de manifests de GlobalNetworkPolicy bloqueando tráfego não autorizado.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Terraform, Calico Operator, GlobalNetworkPolicy, Zero-Trust Kubernetes
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform apply -target=module.calico_security
```
