# Shadow Deploy e Espelhamento de Tráfego de Produção com Envoy Proxy

## 1. Cenário de Produção Real
Reescrita completa do motor de preços de seguros em Connecticut precisa ser testada contra tráfego real sem risco de responder aos usuários.

## 2. O Problema Real
Submeter a nova aplicação à mesma volumetria e dados do ambiente de produção sem que suas respostas cheguem aos clientes externos.

## 3. Arquitetura e Engenharia da Solução
Configuração de Traffic Shadowing no Ingress Envoy/Istio duplicando assincronamente as requisições HTTP para o serviço 'dark'.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Envoy Shadow Traffic, Dark Launching, Istio VirtualService, Traffic Mirroring
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
kubectl apply -f shadow-mirror-rule.yaml
```
