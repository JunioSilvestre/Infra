# Pipeline de Testes de Integração Automatizados de Módulos com Terratest em Go

## 1. Cenário de Produção Real
Módulos atualizados por um engenheiro frequentemente quebravam o provisionamento de outros times por falta de testes de regressão automatizados.

## 2. O Problema Real
Testar o módulo criando infraestrutura real temporária na AWS, validando o tráfego HTTP/TCP e destruindo tudo no final do teste.

## 3. Arquitetura e Engenharia da Solução
Suíte de testes em Go utilizando Terratest (`terraform.InitAndApply`, `http_helper.HttpGetWithRetry`) executada a cada Pull Request.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Terratest, Go (Golang), Automated Testing, Continuous Integration
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
cd test && go test -v -timeout 30m
```
