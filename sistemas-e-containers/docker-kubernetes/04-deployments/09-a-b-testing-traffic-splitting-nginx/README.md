# Testes A/B com Divisão Percentual Precisa no Nginx Ingress Controller

## 1. Cenário de Produção Real
Área de marketing e produto precisa testar duas variantes de algoritmos de conversão dividindo o tráfego de usuários em proporções exatas.

## 2. O Problema Real
Permitir divisão de carga sem alterar código de negócio das aplicações nem reimplantar gateways de entrada pesados.

## 3. Arquitetura e Engenharia da Solução
Configuração de Ingress Canário usando anotações `nginx.ingress.kubernetes.io/canary` e `canary-weight: 20`.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Kubernetes Ingress-Nginx, Canary Annotations, A/B Testing
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
kubectl apply -f ingress-canary-weight.yaml
```
