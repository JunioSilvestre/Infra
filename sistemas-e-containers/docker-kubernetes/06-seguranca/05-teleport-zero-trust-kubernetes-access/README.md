# Acesso Seguro Zero-Trust com Teleport e Gravação de Sessões de Kubectl

## 1. Cenário de Produção Real
Engenheiros utilizavam arquivos kubeconfig estáticos locais com certificados de longa duração, gerando sério risco em caso de roubo de notebook.

## 2. O Problema Real
Centralizar o acesso ao cluster com Single Sign-On, permissões temporárias (RBAC just-in-time) e gravação de todos os comandos executados.

## 3. Arquitetura e Engenharia da Solução
Deploy do Teleport Kubernetes Access, autenticação via Okta e emissão de certificados x509 de curta duração (8 horas) para engenheiros.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Gravitational Teleport, Zero-Trust Access, Okta SSO, Audit Trail
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
tsh login --proxy=teleport.corp.com && tsh kube login k8s-prod && tsh audit
```
