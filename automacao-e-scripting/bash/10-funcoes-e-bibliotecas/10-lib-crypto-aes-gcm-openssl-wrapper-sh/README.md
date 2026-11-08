# 10 — Wrapper de Criptografia e Decodificação Segura AES-256-GCM com OpenSSL

## 🏢 Cenário de Negócios e Produção Real
Criptografia de arquivos de configuração, credenciais locais e backups sensíveis.

### ⚠️ O Problema Real
Uso de modos antigos inseguros (como AES-CBC sem HMAC) que são vulneráveis a ataques de Padding Oracle.

## 🚀 Arquitetura e Engenharia em Bash
Funções 'crypto_encrypt' e 'crypto_decrypt' padronizando o uso de AES-256-GCM autenticado via OpenSSL, com derivação de chave segura via PBKDF2 (100.000 iterações), salt randômico e vetor de inicialização (IV).

## 🛠️ Ferramentas Nativas Linux Utilizadas
`openssl, base64`

## 📌 Exemplo de Execução CLI
```bash
source lib/crypto.sh && crypto_encrypt --in secret.txt --out secret.enc --pass '$KEY'
```
