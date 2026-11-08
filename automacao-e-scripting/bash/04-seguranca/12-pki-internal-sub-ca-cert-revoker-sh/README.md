# 12 — Revogador de Emergência e Geração de CRL para Sub-CAs Internas

## 🏢 Cenário de Negócios e Produção Real
Comprometimento de uma máquina ou rotação de emergência de infraestrutura TLS interna.

### ⚠️ O Problema Real
Atraso na distribuição de certificados revogados permite que um atacante use credenciais antigas para autenticar em microsserviços.

## 🚀 Arquitetura e Engenharia em Bash
Geração da requisição de revogação via OpenSSL, atualização do banco index.txt da CA, compilação da nova Certificate Revocation List (CRL) e publicação automática em endpoint HTTP/S3 acessível pelos servidores de borda.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`openssl, aws, curl, systemctl`

## 📌 Exemplo de Execução CLI
```bash
./revoke_cert.sh --serial-number 10A4F --reason keyCompromise --publish-crl
```
