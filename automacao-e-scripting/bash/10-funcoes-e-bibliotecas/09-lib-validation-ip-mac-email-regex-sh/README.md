# 09 — Biblioteca de Validação de Tipos de Dados (IPv4/IPv6, MAC, Domínio, Email)

## 🏢 Cenário de Negócios e Produção Real
Validação de dados de entrada antes de executar operações de rede ou criação de contas.

### ⚠️ O Problema Real
Entradas malformadas quebram comandos silenciosamente no meio da execução do script.

## 🚀 Arquitetura e Engenharia em Bash
Coleção de funções booleanas 'is_ipv4', 'is_ipv6', 'is_mac', 'is_email', 'is_fqdn', 'is_port' utilizando expressões regulares POSIX ERE no operador '=~' nativo do Bash, sem dependência de binários externos.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`bash [[ =~ ]]`

## 📌 Exemplo de Execução CLI
```bash
source lib/validate.sh && is_ipv4 '192.168.1.1' || die 'IP inválido'
```
