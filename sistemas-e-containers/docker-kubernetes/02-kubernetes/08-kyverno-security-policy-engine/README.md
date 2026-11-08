# Governança de Segurança e Admissão de Recursos com Kyverno sem Código Rego

## 1. Cenário de Produção Real
Auditoria externa exigiu que nenhum pod rode como root, todas as imagens venham do registry interno e requests/limits sejam obrigatórios.

## 2. O Problema Real
Validar e mutar manifests no momento da admissão (Admission Controller) utilizando YAML declarativo simples e familiar aos operadores.

## 3. Arquitetura e Engenharia da Solução
Instalação do Kyverno com ClusterPolicies de validação, mutação de securityContext (drop ALL capabilities) e geração de NetworkPolicies padrão.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Kyverno, Kubernetes Dynamic Admission Controller, Pod Security Standards
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
kubectl apply -f disallow-root-execution.yaml && kubectl get clusterpolicy
```
