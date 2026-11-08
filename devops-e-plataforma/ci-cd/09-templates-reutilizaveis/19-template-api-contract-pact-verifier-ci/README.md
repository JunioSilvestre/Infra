# 19 — Template Reutilizável de Verificação de Contratos de API com Pact Broker

## 🏢 Cenário de Produção e Vida Real
Integração contínua para validação de contratos entre microsserviços em arquiteturas orientadas a eventos e REST.

### ⚠️ O Problema Real
APIs que publicam contratos mas não verificam se continuam atendendo aos consumidores existentes.

## 🚀 Arquitetura e Engenharia de CI/CD
Template que consulta o Pact Broker, executa a suíte de testes do provedor contra os contratos registrados e publica o status de verificação atualizado ('can-i-deploy').

## 🛠️ Ferramentas e Tecnologias Utilizadas
`pact-cli, curl, jq`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
pact-verifier --provider-base-url=http://localhost:5000 --pact-broker-base-url=https://pact.corp
```
