# 09 — Migração Gradual de Tráfego em Funções Serverless (AWS Lambda Aliases e CodeDeploy)

## 🏢 Cenário de Produção e Vida Real
Atualização de funções Lambda críticas com roteamento ponderado de tráfego entre versões.

### ⚠️ O Problema Real
Atualizar a função de uma vez causa erros em massa se o novo pacote de runtime tiver problemas.

## 🚀 Arquitetura e Engenharia de CI/CD
Uso de AWS CodeDeploy com configuração LambdaLinear10PercentEvery1Minute, monitorando alarmes do CloudWatch durante o trânsito de tráfego e revertendo automaticamente em caso de exceções.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`aws-cli, sam-cli, terraform`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
aws lambda update-alias --function-name MyFn --name prod --routing-config '{"AdditionalVersionWeights":{"2":0.1}}'
```
