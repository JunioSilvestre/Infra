# Gerador Automatizado de Tráfego Sintético para Validação de Ambientes Pós-Deploy

## 1. Cenário de Produção Real
Após um deploy de infraestrutura, engenheiros precisavam confirmar se todos os fluxos de rede continuavam operacionais.

## 2. O Problema Real
Executar uma bateria de requisições simulando usuários reais de forma totalmente automatizada logo após a finalização da esteira.

## 3. Arquitetura e Engenharia da Solução
Container de testes executando cenários Playwright/k6 com disparo via webhook pós-apply e notificação de status de aprovação.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Synthetic Traffic Generation, k6, Automated Smoke Tests, Post-Deploy Validation
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
k6 run --quiet post_deploy_verification.js
```
