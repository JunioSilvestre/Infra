# 13 — Deploy Contínuo no AWS ECS com Circuit Breaker e Rollback Gerenciado

## 🏢 Cenário de Produção e Vida Real
Deploy de serviços de containers no AWS ECS Fargate com tolerância a falhas de inicialização.

### ⚠️ O Problema Real
Tasks do ECS que falham nos healthchecks entram em loop infinito de subida e descida sem rollback.

## 🚀 Arquitetura e Engenharia de CI/CD
Habilitação da flag 'deploymentCircuitBreaker: enable: true, rollback: true' no serviço ECS via CLI/Terraform, garantindo reversão automática para o Task Definition anterior sem intervenção manual.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`aws-ecs, aws-cli, jq`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
aws ecs update-service --cluster prod --service api --deployment-configuration '{"deploymentCircuitBreaker":{"enable":true,"rollback":true}}'
```
