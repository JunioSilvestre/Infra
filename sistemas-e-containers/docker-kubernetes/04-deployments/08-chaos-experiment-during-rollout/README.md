# Validação de Resiliência Injetando Falhas de Pod Durante Rollout Canário

## 1. Cenário de Produção Real
Certificar que a plataforma mantém alta disponibilidade e zero erros 5xx mesmo se nós caírem durante o exato momento do deployment.

## 2. O Problema Real
Eliminar o medo de deploys durante o dia através de validação contínua com engenharia de caos durante a esteira de entrega.

## 3. Arquitetura e Engenharia da Solução
Job de teste integrado que dispara `chaos-mesh` derrubando 20% dos nós enquanto o rollout canário de 50% é promovido.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Chaos Mesh, Argo Rollouts, Resilience Verification, Automated CI Gates
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
kubectl apply -f chaos-rollout-stress.yaml
```
