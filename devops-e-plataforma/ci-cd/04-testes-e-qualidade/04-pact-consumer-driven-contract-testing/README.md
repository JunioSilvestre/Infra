# 04 — Testes de Contrato Guiados pelo Consumidor (Consumer-Driven Contracts) com Pact

## 🏢 Cenário de Produção e Vida Real
Integração segura entre dezenas de microsserviços sem precisar subir todo o ecossistema localmente.

### ⚠️ O Problema Real
Mudança em um campo de resposta de uma API quebra os clientes que a consomem sem que ninguém perceba antes de produção.

## 🚀 Arquitetura e Engenharia de CI/CD
Geração do contrato (Pact file) no pipeline do consumidor, upload para o Pact Broker, e verificação automática no pipeline do provedor ('can-i-deploy') garantindo compatibilidade mútua.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`pact-cli, pact-broker, curl`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
pact-broker can-i-deploy --pacticipant OrderService --version v1.2.0 --to-environment production
```
