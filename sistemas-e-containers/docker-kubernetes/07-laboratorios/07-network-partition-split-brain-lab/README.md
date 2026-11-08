# Simulação de Partição de Rede e Prevenção de Split-Brain com Chaos Mesh

## 1. Cenário de Produção Real
Testar o comportamento de bancos distribuídos e clusters de cache quando ocorre uma desconexão física entre nós do cluster.

## 2. O Problema Real
Validar se as políticas de fencing e quórum impedem que dois nós assumam o papel de 'Master' simultaneamente, corrompendo os dados.

## 3. Arquitetura e Engenharia da Solução
Injeção de regra de isolamento de rede com Chaos Mesh impedindo tráfego entre a zona leste e a zona oeste e validação de logs.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Chaos Mesh, NetworkPartition, Split-Brain Prevention, Distributed Consensus
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
kubectl apply -f network-partition-chaos.yaml
```
