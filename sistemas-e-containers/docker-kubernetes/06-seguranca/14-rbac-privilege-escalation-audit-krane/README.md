# Auditoria e Eliminação de Brechas de Escalação de Privilégios RBAC com Krane

## 1. Cenário de Produção Real
Regras de RBAC legadas continham permissões amplas como `verbs: [*]` ou permissão de criar `RoleBindings`, permitindo que usuários virassem administradores.

## 2. O Problema Real
Mapear todos os caminhos possíveis de escalação de privilégios e remover acessos excessivos concedidos a contas humanas e de serviço.

## 3. Arquitetura e Engenharia da Solução
Execução da ferramenta Krane (Shopify) e rbac-lookup mapeando o grafo de permissões e identificando riscos de segurança no cluster.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Krane, rbac-tool, Kubernetes RBAC Risk Analysis, Privilege Escalation Prevention
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
krane report --namespace default && rbac-lookup --kind serviceaccount
```
