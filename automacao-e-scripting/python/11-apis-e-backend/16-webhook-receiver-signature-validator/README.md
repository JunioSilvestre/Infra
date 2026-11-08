# Receptor Seguro de Webhooks com Validação de Assinatura Criptográfica HMAC

## 1. Cenário de Produção Real
Ambiente corporativo de alta criticidade e escala distribuída exigindo confiabilidade operacional contínua, governança de dados e auditoria em conformidade com padrões de SRE e Platform Engineering.

## 2. O Problema Real
Recepção de notificações de pagamentos (Stripe/PayPal) com rejeição de requisições forjadas. A ausência desta automação resulta em gargalos operacionais manuais, risco de falhas humanas durante incidentes, indisponibilidade não planejada de serviços e violação de SLAs estabelecidos.

## 3. Arquitetura e Engenharia da Solução
Solução desenvolvida em Python modular com tipagem estática (type hints), validação estrita de contratos de dados, tratamento resiliente de exceções, isolamento em threads ou processos assíncronos e instrumentação com logs estruturados em JSON para integração direta com datalakes de observabilidade.

## 4. Ferramentas e Tecnologias
- **Runtime:** Python 3.10+
- **Bibliotecas / Ecossistema:** fastapi, hmac, hashlib
- **Padrões:** Clean Architecture, 12-Factor App, Tratamento Robusto de Sinal (SIGTERM/SIGINT)

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com parâmetros de produção
pytest tests/test_webhooks.py
```
