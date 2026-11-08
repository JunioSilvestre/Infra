# Gerenciamento de GPUs NVIDIA para Cargas de Machine Learning em Boston

## 1. Cenário de Produção Real
Hub de inteligência artificial em Cambridge necessita compartilhar placas NVIDIA H100 entre múltiplos modelos de inferência e treino.

## 2. O Problema Real
Configurar drivers manuais em nós de workers é propenso a erros e gera quebra constante após atualizações de versão de kernel.

## 3. Arquitetura e Engenharia da Solução
Deploy do NVIDIA GPU Operator com descoberta automática de hardware, container toolkit, time-slicing e MIG (Multi-Instance GPU).

## 4. Ferramentas e Tecnologias
- **Ecossistema:** NVIDIA GPU Operator, CUDA, Kubernetes Device Plugins, MIG Partitioning
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
kubectl get nodes -o custom-columns=NAME:.metadata.name,GPU:.status.allocatable.'nvidia\.com/gpu'
```
