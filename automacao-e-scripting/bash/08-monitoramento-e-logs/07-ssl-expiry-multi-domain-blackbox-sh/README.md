# 07 — Sondagem Blackbox de Expiração de Certificados SSL/TLS em Múltiplos Domínios

## 🏢 Cenário de Negócios e Produção Real
Monitoramento de validade de certificados HTTPS de dezenas de sites e APIs públicas da empresa.

### ⚠️ O Problema Real
Um certificado esquecido em um subdomínio secundário expira e quebra integrações de clientes.

## 🚀 Arquitetura e Engenharia em Bash
Leitura de lista de domínios, conexão direta via openssl s_client com SNI, extração da data de validade (notAfter), cálculo de dias restantes com date e geração de dashboard tabular colorido.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`openssl, date, awk, column, mailx`

## 📌 Exemplo de Execução CLI
```bash
./ssl_expiry_scanner.sh --domains-file /etc/domains.txt --warn-days 30
```
