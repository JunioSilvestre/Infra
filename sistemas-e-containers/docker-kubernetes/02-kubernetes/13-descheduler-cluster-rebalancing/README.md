# Otimização de Recursos e Rebalanceamento de Nós com Kubernetes Descheduler

## 1. Cenário de Produção Real
Clusters de produção ficavam fragmentados com nós operando a 95% de uso enquanto nós recém-adicionados permaneciam com 10% de carga.

## 2. O Problema Real
O Kube-scheduler padrão apenas decide onde posicionar o pod no momento da criação e nunca move pods para desfragmentar o cluster.

## 3. Arquitetura e Engenharia da Solução
Instalação do Descheduler rodando como CronJob com estratégias de LowNodeUtilization, RemoveDuplicates e PodLifeTime.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Kubernetes Descheduler, Kube-scheduler, Node Balancing Strategies
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
kubectl create job --from=cronjob/descheduler manual-rebalance -n kube-system
```
