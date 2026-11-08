# Pipeline de Testes de Integração Automatizados com Terratest em Runners Efêmeros

## 1. Cenário de Produção Real
Mudanças em módulos corporativos quebravam ambientes por falta de testes reais em infraestrutura ativa.

## 2. O Problema Real
Criar infraestrutura temporária real na nuvem durante o PR, executar asserções em Go e destruir tudo ao final do teste.

## 3. Arquitetura e Engenharia da Solução
Execução do runner de CI isolado com permissões para rodar testes Go utilizando o framework Terratest com timeouts controlados.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Terratest, Go, Integration Testing, Ephemeral Test Infrastructure
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
go test -v -timeout 45m ./test/...
```
