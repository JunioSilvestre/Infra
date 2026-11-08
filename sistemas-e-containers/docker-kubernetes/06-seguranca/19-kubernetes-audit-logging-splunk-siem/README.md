# Coleta e Auditoria de Chamadas de API do Kubernetes no Splunk SIEM

## 1. Cenário de Produção Real
Equipes de resposta a incidentes precisavam saber exatamente quem deletou um namespace de produção ou alterou uma RoleBinding às 3h da manhã.

## 2. O Problema Real
Capturar cada chamada recebida pelo kube-apiserver com detalhes do usuário, IP de origem, verbo HTTP e payload completo.

## 3. Arquitetura e Engenharia da Solução
Configuração do `audit-policy.yaml` com nível de logging Metadata e RequestResponse, encaminhando eventos via Fluentbit ao Splunk.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Kubernetes Audit Policy, Fluentbit, Splunk Enterprise, SIEM Investigation
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
kubectl apply -f audit-policy-config.yaml
```
