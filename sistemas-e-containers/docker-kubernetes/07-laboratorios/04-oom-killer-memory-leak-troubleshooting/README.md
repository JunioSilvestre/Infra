# Análise Prática de Vazamento de Memória e Ação do OOM-Killer em Pods

## 1. Cenário de Produção Real
Aplicações em Java e Node.js sofriam reinicializações constantes com código de saída 137 (OOMKilled) sem logs claros de erro.

## 2. O Problema Real
Capacitar o time a diagnosticar exatamente onde a memória foi alocada antes da intervenção do kernel e ajustar os limites de pod.

## 3. Arquitetura e Engenharia da Solução
Container com script proposital de vazamento contínuo de RAM, inspeção de eventos do Kubernetes e extração de dumps de heap.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Linux OOM-Killer, dmesg, Exit Code 137, Memory Pressure Profiling
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
kubectl describe pod memory-leak-pod | grep -E '(OOMKilled|Exit Code)'
```
