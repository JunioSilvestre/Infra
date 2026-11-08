# 13 — Template Reutilizável de Build e Deploy para Arquiteturas Serverless (AWS Lambda)

## 🏢 Cenário de Produção e Vida Real
Esteira ágil para compilação, empacotamento e deploy de funções serverless em Python/Node/.NET.

### ⚠️ O Problema Real
Funções serverless empacotadas com arquivos desnecessários (testes, devDependencies) estourando o limite de tamanho da AWS.

## 🚀 Arquitetura e Engenharia de CI/CD
Template otimizado que empacota apenas arquivos de runtime, faz upload para o S3, atualiza o código da Lambda com alias de tráfego progressivo e valida métricas de execução.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`sam-cli, serverless-framework, aws-cli`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
sam build && sam deploy --no-confirm-changeset
```
