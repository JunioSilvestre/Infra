# Auditor e Renovador Proativo de Certificados TLS Prestes a Expirar

## 1. Cenário de Produção Real
Mesmo com ferramentas de automação, certificados customizados esquecidos em balanceadores e ingress venciam sem aviso prévio.

## 2. O Problema Real
Auditar diariamente todos os certificados digitais x509 expostos na infraestrutura e renovar automaticamente certificados com menos de 20 dias.

## 3. Arquitetura e Engenharia da Solução
Script de auditoria em Go varrendo domínios corporativos, validando cadeias de certificados e disparando ordens ACME via API.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** TLS Certificate Auditing, ACME Automation, Let's Encrypt, Go
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
go run cert_watchdog.go --domains-file domains.txt --threshold-days 20
```
