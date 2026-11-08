# Simulação de Erro de Cadeia Incompleta de Certificados SSL (Intermediate CA Missing)

## 1. Cenário de Produção Real
O site corporativo funcionava normalmente no navegador de desktop, mas clientes em dispositivos móveis e APIs falhavam com erro SSL.

## 2. O Problema Real
Diagnosticar a ausência do certificado da autoridade intermediária no pacote enviado pelo balanceador e restaurar a cadeia completa.

## 3. Arquitetura e Engenharia da Solução
Configuração de bundle incompleto no Nginx, teste com `openssl s_client -connect` e correção aplicando o arquivo `fullchain.pem`.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** SSL Intermediate CA Missing, Certificate Chain Triage, OpenSSL Diagnostics
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
openssl s_client -connect localhost:443 -servername api.corp.internal
```
