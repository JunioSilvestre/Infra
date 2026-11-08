# Expansão a Quente de Volume Persistente em Pods com Dados Ativos

## 1. Cenário de Produção Real
Volumes de bancos de dados em produção atingiram 90% de ocupação e não podem sofrer parada para reconfiguração de tamanho de disco.

## 2. O Problema Real
Aumentar a capacidade de armazenamento de um PersistentVolumeClaim dinamicamente sem desligar ou desmontar a aplicação em execução.

## 3. Arquitetura e Engenharia da Solução
Edição a quente do manifest `pvc.spec.resources.requests.storage`, verificação da ação do storage provisioner CSI e resize do filesystem.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Kubernetes CSI Volume Expansion, Online Filesystem Resize, PVC Scaling
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
kubectl patch pvc db-data-disk -p '{"spec":{"resources":{"requests":{"storage":"100Gi"}}}}'
```
