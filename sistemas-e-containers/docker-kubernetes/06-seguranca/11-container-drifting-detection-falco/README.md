# Detecção e Bloqueio de Alteração de Binários em Disco (Container Drift)

## 1. Cenário de Produção Real
Atacantes que conseguem invadir um container frequentemente baixam binários de mineração de criptomoedas ou ferramentas de enumeração de rede.

## 2. O Problema Real
Garantir imutabilidade estrita alertando se qualquer novo arquivo for gravado em `/usr/bin`, `/sbin` ou se binários forem modificados.

## 3. Arquitetura e Engenharia da Solução
Regras avançadas de Falco monitorando chamadas `open_write` e imposição da diretiva `readOnlyRootFilesystem: true` no pod.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Container Drift Detection, Falco Rules, Immutable Infrastructure, ReadOnlyRootFilesystem
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
kubectl exec -it vulnerable-pod -- touch /bin/malware || echo 'Write blocked by read-only root!'
```
