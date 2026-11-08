# Simulação e Recuperação de Perda Total de Quórum do etcd

## 1. Cenário de Produção Real
Em caso de partição de rede ou falha de 2 nós em um cluster etcd de 3 nós, a API do Kubernetes trava e não aceita mais escritas.

## 2. O Problema Real
Treinar engenheiros de confiabilidade para restabelecer o cluster etcd a partir de snapshot e forçar novo quórum com zero perda de dados.

## 3. Arquitetura e Engenharia da Solução
Laboratório com script que mata 2 instâncias do etcd, gerando erro de quórum, seguido da restauração com `etcdctl snapshot restore` e reset do membro.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** etcdctl, Disaster Recovery Drills, RAFT Consensus, Kubernetes Troubleshooting
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
ETCDCTL_API=3 etcdctl snapshot restore snapshot.db --data-dir=/var/lib/etcd-restore
```
