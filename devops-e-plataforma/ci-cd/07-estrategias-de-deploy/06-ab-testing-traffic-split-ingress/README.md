# 06 — Testes A/B com Divisão de Tráfego Baseada em Headers HTTP no Nginx Ingress

## 🏢 Cenário de Produção e Vida Real
Comparação de conversão entre duas versões distintas de interface para usuários específicos.

### ⚠️ O Problema Real
Dificuldade de direcionar apenas clientes beta ou funcionários internos para a nova versão sem afetar o público geral.

## 🚀 Arquitetura e Engenharia de CI/CD
Uso de anotações Canary no Nginx Ingress Controller ('nginx.ingress.kubernetes.io/canary-by-header' e 'canary-by-header-value'), encaminhando requisições com header 'X-Beta-Tester: true' para o serviço B.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`kubectl, nginx-ingress, curl`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
curl -H 'X-Beta-Tester: true' https://app.corp.com
```
