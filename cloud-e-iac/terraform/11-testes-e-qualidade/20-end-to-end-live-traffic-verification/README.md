# Validação de Tráfego Ponta a Ponta Pós-Apply com Asserções HTTP e DNS

## 1. Cenário de Produção Real
O Terraform concluía a aplicação sem erros, mas os clientes não conseguiam acessar o serviço porque a propagação de DNS ou certificado falhou.

## 2. O Problema Real
Garantir que a esteira de entrega contínua só declare sucesso após realizar chamadas reais de tráfego HTTPS com resposta HTTP 200.

## 3. Arquitetura e Engenharia da Solução
Script de validação ponta a ponta pós-apply que realiza consultas DNS com retry exponencial e valida payloads HTTP da aplicação.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** End-to-End Verification, Post-Provisioning Validation, Synthetic Probing
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
curl --fail --retry 10 --retry-delay 5 https://api.corp.internal/healthz
```
