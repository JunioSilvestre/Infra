# Mecanismo de Rollback Automático Rápido com Flag --atomic e Timeout Estrito

## 1. Cenário de Produção Real
Aplicações que falhavam no startup deixavam pods em CrashLoopBackOff consumindo conexões e exigindo intervenção manual de SRE.

## 2. O Problema Real
Garantir que se um deploy não estabilizar dentro do tempo limite, o Helm reverta automaticamente o cluster para a versão anterior saudável.

## 3. Arquitetura e Engenharia da Solução
Configuração de comandos corporativos com as flags `--atomic`, `--timeout 5m0s` e `--cleanup-on-fail` nos scripts de deployment.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Helm Rollback, Helm Atomic Deploys, Kubernetes Readiness Probes
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
helm upgrade --install payment-api ./chart --atomic --timeout 3m0s -f values.prod.yaml
```
