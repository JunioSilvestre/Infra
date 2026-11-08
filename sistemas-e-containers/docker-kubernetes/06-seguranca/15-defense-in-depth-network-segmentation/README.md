# Segmentação em Camadas de Redes de Produção com Cilium e Deny-All Padrão

## 1. Cenário de Produção Real
Ataques de movimentação lateral ocorriam com sucesso porque a rede padrão do Kubernetes permite comunicação livre entre qualquer pod de qualquer namespace.

## 2. O Problema Real
Isolar totalmente namespaces de Banco de Dados, Pagamentos e Frontend, permitindo apenas portas estritamente autorizadas.

## 3. Arquitetura e Engenharia da Solução
Criação de política global default-deny para tráfego ingress e egress, liberando apenas DNS interno na porta 53 e rotas específicas de API.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** CiliumNetworkPolicy, Zero-Trust Microsegmentation, Network Hardening
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
kubectl apply -f default-deny-all-ingress-egress.yaml
```
