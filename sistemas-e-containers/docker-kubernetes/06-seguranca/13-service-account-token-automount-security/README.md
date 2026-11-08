# Mitigação de Roubo de Credenciais Desativando Automount de Tokens de ServiceAccount

## 1. Cenário de Produção Real
Por padrão, todo pod no Kubernetes recebe um token de autenticação montado em `/var/run/secrets/kubernetes.io/serviceaccount/`.

## 2. O Problema Real
Se a aplicação sofrer uma vulnerabilidade de Server-Side Request Forgery (SSRF) ou injeção, o invasor pode usar esse token para invadir o cluster.

## 3. Arquitetura e Engenharia da Solução
Imposição de política que configura `automountServiceAccountToken: false` em todos os pods que não se comunicam ativamente com a API.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Kubernetes ServiceAccount, Token Projection, SSRF Mitigation, Least Privilege
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
kubectl get pods -o jsonpath='{.items[*].spec.automountServiceAccountToken}'
```
