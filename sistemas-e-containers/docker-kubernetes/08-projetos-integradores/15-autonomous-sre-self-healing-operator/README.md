# Operador Kubernetes Customizado em Go para Auto-Recuperação de Incidentes

## 1. Cenário de Produção Real
Equipes de plantão eram acordadas de madrugada para realizar procedimentos operacionais manuais e repetitivos de limpeza ou reinício de pods.

## 2. O Problema Real
Automatizar completamente a identificação de estados degradados específicos de negócio e disparar rotinas de remediação sem ação humana.

## 3. Arquitetura e Engenharia da Solução
Desenvolvimento de um Kubernetes Operator (Kubebuilder) monitorando CRDs de saúde e executando ações corretivas automáticas com registro de auditoria.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Kubebuilder, Go Operator SDK, Kubernetes Controller Runtime, SRE Self-Healing
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
kubectl get selfhealingpolicies -A
```
