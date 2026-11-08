# Desbloqueio de Deadlocks em Operações de Drenagem de Nós (kubectl drain)

## 1. Cenário de Produção Real
Comandos de manutenção de nós ficavam travados infinitamente com 'Cannot evict pod as it would violate the pod's disruption budget'.

## 2. O Problema Real
Identificar PDBs configurados com parâmetros inatingíveis (ex: minAvailable=1 em serviço de 1 réplica) e aplicar resolução sem derrubar o cluster.

## 3. Arquitetura e Engenharia da Solução
Cenário de deadlock induzido, identificação com `kubectl get pdb` e aplicação de override emergencial com `--disable-eviction` seguro.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** kubectl drain, PodDisruptionBudget Deadlock, Emergency Cluster Maintenance
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
kubectl get pdb -A | grep -E '0\s+1'
```
