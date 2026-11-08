# Simulação Ofensiva de Escape de Container via Montagem Indevida de HostPath

## 1. Cenário de Produção Real
Demonstrar a auditores e desenvolvedores como uma simples montagem de volume `/` do host permite a um invasor obter acesso root na máquina.

## 2. O Problema Real
Comprovar na prática a criticidade de bloquear volumes do tipo hostPath via políticas de admissão de segurança.

## 3. Arquitetura e Engenharia da Solução
Execução de container de teste com volume hostPath apontando para `/etc/crontab` do nó e posterior bloqueio com regra do Kyverno.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Container Escape, hostPath Vulnerability, Kyverno Policy Enforcement
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
kubectl apply -f dangerous-hostpath-pod.yaml || echo 'Blocked by security policy'
```
