# Diagnóstico de Apagão de Serviços Causado por Probes de Readiness Agressivas

## 1. Cenário de Produção Real
Serviço com 50 réplicas perdeu 100% de seus pods do pool de Ingress porque uma consulta de readiness no banco de dados sofreu lentidão momentânea.

## 2. O Problema Real
Projetar probes de saúde que protejam o serviço sem causar falsos positivos catastróficos que derrubam o tráfego de produção.

## 3. Arquitetura e Engenharia da Solução
Laboratório demonstrando o colapso por probe instável e reconfiguração com `failureThreshold: 5`, `periodSeconds: 10` e desacoplamento do DB.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Kubernetes Readiness Probes, Liveness Probes, Cascading Failure Mitigation
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
kubectl describe endpoints core-service
```
