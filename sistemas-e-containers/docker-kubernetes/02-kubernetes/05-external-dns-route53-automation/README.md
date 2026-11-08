# Sincronização Dinâmica de Registros DNS de Ingress com AWS Route53

## 1. Cenário de Produção Real
Deploys de novas aplicações em Kubernetes demandavam abertura de chamados manuais para a equipe de redes apontar os CNAMEs.

## 2. O Problema Real
Eliminar intervenção humana configurando criação e remoção atômica de registros de DNS públicos e privados diretamente pelo ciclo de vida do Ingress.

## 3. Arquitetura e Engenharia da Solução
Deploy do ExternalDNS com permissões IAM via IRSA (IAM Roles for Service Accounts) observando anotações de Ingress e Service LoadBalancer.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** ExternalDNS, AWS Route53, IRSA, AWS EKS, Ingress-Nginx
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
kubectl logs -f deployment/external-dns -n kube-system
```
