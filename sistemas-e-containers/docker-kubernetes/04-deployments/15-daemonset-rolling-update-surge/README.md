# Atualização Otimizada de Agentes de Infraestrutura com DaemonSet RollingUpdate

## 1. Cenário de Produção Real
Atualizar agentes de coleta de logs (Fluentbit/Datadog) em 500 nós demorava horas quando feito com maxUnavailable=1.

## 2. O Problema Real
Acelerar o rollout de agentes de telemetria sem sobrecarregar o plano de controle da API do Kubernetes.

## 3. Arquitetura e Engenharia da Solução
Configuração de `spec.updateStrategy.rollingUpdate.maxUnavailable: 20%` e `maxSurge: 0` para atualização paralela segura.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Kubernetes DaemonSets, Cluster Node Updates, Fleet Infrastructure
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
kubectl rollout restart daemonset/datadog-agent -n monitoring
```
