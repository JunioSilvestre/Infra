# Simulação de Partição de Rede e Perda de Quórum em Cluster de Confiabilidade

## 1. Cenário de Produção Real
Testar como sistemas distribuídos baseados em consenso RAFT (como etcd e Consul) reagem quando nós são isolados fisicamente.

## 2. O Problema Real
Validar se o cluster impede escritas no lado minoritário da partição para evitar divergência de dados e split-brain.

## 3. Arquitetura e Engenharia da Solução
Injeção de partição de rede com iptables bloqueando tráfego entre 2 nós de um cluster de 3 nós etcd, com validação de status de quórum.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** RAFT Consensus, etcdctl, Network Partitioning, Split-Brain Verification
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
etcdctl endpoint status --write-out=table
```
