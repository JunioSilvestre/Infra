# Modularização de Permissões de Mínimo Privilégio RBAC em Helm Charts

## 1. Cenário de Produção Real
Muitos times criavam ClusterRoles exageradas com permissões de administrador de cluster para aplicações que só precisavam ler ConfigMaps.

## 2. O Problema Real
Garantir o princípio do menor privilégio configurando papéis RBAC escopados estritamente ao namespace e parametrizáveis por ambiente.

## 3. Arquitetura e Engenharia da Solução
Templates de ServiceAccount, Role e RoleBinding dinâmicos no chart, permitindo desabilitar criação de RBAC se já existirem no cluster.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Kubernetes RBAC, Least Privilege Security, Helm Templates
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
helm template . --set rbac.create=true --set rbac.clusterScope=false | grep -A 8 'kind: Role'
```
