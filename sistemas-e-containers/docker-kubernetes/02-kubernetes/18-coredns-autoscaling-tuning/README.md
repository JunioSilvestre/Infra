# Otimização de Performance e Autoescalonamento de CoreDNS para Alta Vazão

## 1. Cenário de Produção Real
Serviços corporativos sofriam com 'timeout resolving DNS' após ultrapassarem 50.000 requisições por segundo devido a saturação do CoreDNS.

## 2. O Problema Real
Evitar contenção de resolução de nomes internos de serviços e chamadas externas mitigando o infame problema de latência de 5 segundos do conntrack.

## 3. Arquitetura e Engenharia da Solução
Deploy de NodeLocal DNSCache como DaemonSet nos nós de trabalho e configuração de CoreDNS com autoescalonamento por número de nós/núcleos.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** CoreDNS, NodeLocal DNSCache, cluster-proportional-autoscaler
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
kubectl get pods -n kube-system -l k8s-app=node-local-dns
```
