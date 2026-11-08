# Aprovações Interativas de Aplicação de Infraestrutura via ChatOps no Slack

## 1. Cenário de Produção Real
Líderes técnicos demoravam para aprovar deploys porque precisavam entrar manualmente nas interfaces dos pipelines de CI.

## 2. O Problema Real
Permitir que engenheiros sêniores aprovem ou rejeitem o `terraform apply` com um clique em botões interativos diretamente no Slack.

## 3. Arquitetura e Engenharia da Solução
Integração do pipeline com Slack App via webhooks e payloads interativos que liberam a execução do estágio de deploy com registro de auditoria.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** ChatOps, Slack Interactive Buttons, CI/CD Approval Gate, Audit Logging
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
curl -X POST -H 'Content-type: application/json' --data '{"text":"Aprovar deploy prod?"}' <SLACK_WEBHOOK>
```
