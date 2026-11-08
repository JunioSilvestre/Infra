# Isolamento e Controle de Consumo de Ephemeral Storage em Nós Compartilhados

## 1. Cenário de Produção Real
Aplicações gravando arquivos temporários gigantes em `/tmp` esgotavam o disco raiz do nó e causavam o despejo forçado de pods vizinhos.

## 2. O Problema Real
Impor limites de armazenamento temporário por container e garantir que arquivos em disco não derrubem o servidor compartilhado.

## 3. Arquitetura e Engenharia da Solução
Configuração de `resources.limits.ephemeral-storage: 2Gi` e validação da ação do Kubelet matando o container abusivo.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Ephemeral Storage Limits, Kubelet Resource Management, Noisy Neighbor Defense
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
kubectl apply -f pod-ephemeral-limit.yaml
```
