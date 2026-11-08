# Isolamento Multi-Tenant Corporativo com Capsule e Hierarchical Namespaces

## 1. Cenário de Produção Real
Grande seguradora em Hartford precisa compartilhar um cluster Kubernetes corporativo entre 40 equipes de produto sem risco de interferência mútua.

## 2. O Problema Real
Clusters dedicados por time geravam custo milionário desnecessário de infraestrutura de nuvem e complexidade de manutenção.

## 3. Arquitetura e Engenharia da Solução
Implementação do Capsule Operator criando Tenant CRDs com cotas agregadas de CPU/RAM, classes de storage restritas e NetworkPolicies herdadas.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Capsule Operator, Hierarchical Namespaces (HNC), RBAC, ResourceQuotas
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
kubectl get tenants && kubectl auth can-i create namespaces --as alice
```
