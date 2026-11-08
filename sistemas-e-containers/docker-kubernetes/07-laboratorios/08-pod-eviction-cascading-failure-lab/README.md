# Reprodução e Resolução de Falhas em Cascata por Ejeção de Pods (Cascading Eviction)

## 1. Cenário de Produção Real
A queda de um nó causou o reagendamento de centenas de pods em nós restantes, derrubando-os em efeito dominó por sobrecarga de memória.

## 2. O Problema Real
Aprender a conter o efeito dominó utilizando PodDisruptionBudgets, PriorityClasses e nós dedicados de transbordo (bursting).

## 3. Arquitetura e Engenharia da Solução
Simulação de desligamento abrupto de dois nós de um cluster pequeno de testes com saturação imediata e análise de métricas.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** PriorityClass, Kubelet Eviction, Cascading Failures, SRE Resilience
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
kubectl get events --field-selector reason=Evicted -A
```
