# Migração e Implementação de Pod Security Standards no Modo Restricted

## 1. Cenário de Produção Real
A descontinuação das antigas PodSecurityPolicies (PSP) deixou clusters sem proteção padrão contra execuções privilegiadas.

## 2. O Problema Real
Aplicar a nova especificação oficial de Pod Security Standards garantindo isolamento total de processos e privilégios mínimos.

## 3. Arquitetura e Engenharia da Solução
Anotação de namespaces com `pod-security.kubernetes.io/enforce: restricted` e `warn: restricted`, forçando drop de capabilities e nonroot.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Pod Security Admission (PSA), Pod Security Standards (PSS), SecurityContext
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
kubectl label namespace prod-services pod-security.kubernetes.io/enforce=restricted
```
