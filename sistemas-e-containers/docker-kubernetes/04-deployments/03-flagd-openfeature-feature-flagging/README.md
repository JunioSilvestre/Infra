# Entrega Progressiva com Feature Flags e OpenFeature no Kubernetes

## 1. Cenário de Produção Real
Equipes de engenharia de software precisavam dissociar o momento do deploy técnico de código do momento do lançamento funcional para o cliente.

## 2. O Problema Real
Permitir que funcionalidades sejam ativadas gradualmente por regras de negócio (ex: usuários de Nova York primeiro) sem redeploy de pods.

## 3. Arquitetura e Engenharia da Solução
Deploy do daemon `flagd` como sidecar gerenciado pelo OpenFeature Kubernetes Operator, avaliando flags em milissegundos localmente.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** OpenFeature, flagd, Feature Flags, Progressive Delivery
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
kubectl get featureflagconfigurations -A
```
