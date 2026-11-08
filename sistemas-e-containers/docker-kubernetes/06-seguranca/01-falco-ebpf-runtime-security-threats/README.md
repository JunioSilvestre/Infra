# Detecção de Intrusões em Tempo Real com Falco e eBPF em Cargas de Produção

## 1. Cenário de Produção Real
Fintechs em NY exigem monitoramento ativo capaz de disparar alarmes imediatos se um container abrir um terminal bash ou tentar ler /etc/shadow.

## 2. O Problema Real
Identificar comportamentos maliciosos e violações de segurança em tempo de execução sem degradar a performance dos nós do cluster.

## 3. Arquitetura e Engenharia da Solução
Deploy do Falco com driver eBPF moderno, regras customizadas em YAML para detecção de shell em pods de produção e encaminhamento de alertas.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Falco, eBPF Driver, FalcoSidekick, Kubernetes Security, Slack/PagerDuty Alerts
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
kubectl logs -f -n falco daemonset/falco | grep 'Notice A shell was spawned'
```
