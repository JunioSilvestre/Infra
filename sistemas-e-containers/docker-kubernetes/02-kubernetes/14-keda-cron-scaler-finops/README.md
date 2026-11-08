# Desligamento Automatizado de Workloads Noturnos e Fins de Semana (FinOps)

## 1. Cenário de Produção Real
Ambientes de desenvolvimento, homologação e staging consumiam centenas de instâncias EC2 nos finais de semana sem nenhum usuário ativo.

## 2. O Problema Real
Economizar até 65% da fatura de computação de ambientes não produtivos desligando cargas de trabalho fora do expediente de engenharia.

## 3. Arquitetura e Engenharia da Solução
Configuração de KEDA Cron Scaler gerenciando replicas de Deployments de segunda a sexta entre 08h e 20h, zerando réplicas no restante do tempo.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** KEDA, Kubernetes Cron Scaler, AWS EKS Cost Optimization, FinOps
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
kubectl get scaledobject dev-services-scaler -o yaml
```
