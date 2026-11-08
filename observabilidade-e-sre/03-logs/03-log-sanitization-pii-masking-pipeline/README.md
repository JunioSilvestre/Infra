# Higienização e Mascaramento em Tempo Real de CPFs, Cartões e PII em Logs

## 1. Cenário de Produção Real
Desenvolvedores frequentemente deixavam passar números de cartões de crédito e dados de clientes em logs de depuração, violando a LGPD.

## 2. O Problema Real
Garantir com 100% de certeza que nenhuma informação pessoal identificável (PII) seja gravada em disco ou enviada ao datalake.

## 3. Arquitetura e Engenharia da Solução
Pipeline no Fluent Bit utilizando filtros de Lua Script executando expressões regulares de substituição determinística (`REDACTED_CARD`).

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Fluent Bit Lua Filter, PII Masking, LGPD/GDPR Compliance, PCI-DSS
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
fluent-bit -i dummy -F lua -p script=mask.lua -o stdout
```
