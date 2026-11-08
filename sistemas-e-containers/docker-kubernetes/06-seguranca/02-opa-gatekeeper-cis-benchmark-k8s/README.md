# Imposição Estrita de Políticas CIS Benchmark com OPA Gatekeeper

## 1. Cenário de Produção Real
Auditoria externa identificou desenvolvedores rodando pods com `privileged: true`, portas de host abertas e sem limites de recursos.

## 2. O Problema Real
Bloquear na admissão da API do Kubernetes qualquer manifesto que viole os padrões do CIS Kubernetes Benchmark.

## 3. Arquitetura e Engenharia da Solução
Instalação do OPA Gatekeeper com ConstraintTemplates escritos em Rego e Constraints impondo bloqueio de montagem de docker.sock e root.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Open Policy Agent (OPA), Gatekeeper, Rego Language, CIS Benchmark
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
kubectl apply -f k8s-block-privileged-containers.yaml && kubectl get constraints
```
