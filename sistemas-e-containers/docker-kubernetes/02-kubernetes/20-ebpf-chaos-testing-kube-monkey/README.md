# Testes Contínuos de Caos e Resiliência em Produção com Chaos Mesh

## 1. Cenário de Produção Real
Validar se a arquitetura de alta disponibilidade realmente sobrevive à perda abrupta de réplicas, latência artificial e partição de rede.

## 2. O Problema Real
Falhas reais acontecem em horários inoportunos; é necessário induzir falhas controladas durante o expediente para validar SLAs.

## 3. Arquitetura e Engenharia da Solução
Deploy do Chaos Mesh aplicando Chaos Experiments: NetworkChaos (perda de pacotes e delay de 100ms) e PodChaos (kill aleatório).

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Chaos Mesh, Chaos Engineering, NetworkChaos, PodKill, SLA Validation
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
kubectl apply -f network-delay-chaos.yaml && kubectl get networkchaos
```
