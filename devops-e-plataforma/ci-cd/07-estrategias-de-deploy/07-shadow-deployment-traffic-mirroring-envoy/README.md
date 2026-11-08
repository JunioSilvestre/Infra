# 07 — Deploy Espelho (Shadow Deployment) com Duplicação de Tráfego Real via Envoy

## 🏢 Cenário de Produção e Vida Real
Teste de carga e validação de estabilidade de uma nova versão de backend com 100% do tráfego real sem que os usuários vejam as respostas.

### ⚠️ O Problema Real
Testes sintéticos não reproduzem o comportamento bizarro e as combinações de dados que os usuários reais enviam.

## 🚀 Arquitetura e Engenharia de CI/CD
Configuração de Traffic Shadowing no Envoy Proxy ou Istio VirtualService, duplicando assincronamente as requisições de entrada para a versão sombra e descartando suas respostas.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`envoy, istio, yaml`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
# VirtualService com 'mirror: host: my-app-shadow, mirrorPercentage: value: 100.0'
```
