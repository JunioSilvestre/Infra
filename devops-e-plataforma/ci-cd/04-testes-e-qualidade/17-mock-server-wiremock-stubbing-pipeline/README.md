# 17 — Servidor Mock Dinâmico com WireMock para Simulação de APIs de Terceiros

## 🏢 Cenário de Produção e Vida Real
Testes de esteira que dependem de gateways de pagamento externos (Stripe, Adyen) ou sistemas legados instáveis.

### ⚠️ O Problema Real
Testes falham por indisponibilidade do sandbox externo ou cobram taxas de requisição por chamada.

## 🚀 Arquitetura e Engenharia de CI/CD
Subida de container WireMock leve no pipeline de CI com stubs pré-configurados em JSON simulando respostas de sucesso, recusas e timeouts extremos.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`wiremock, docker, curl`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
docker run -d -p 8080:8080 wiremock/wiremock:latest
```
