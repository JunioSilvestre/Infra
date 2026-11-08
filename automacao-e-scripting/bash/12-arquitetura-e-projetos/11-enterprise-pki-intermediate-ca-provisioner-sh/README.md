# 11 — Provisionador Completo de PKI Corporativa de 3 Camadas (Root CA, Intermediate CA, Leaf)

## 🏢 Cenário de Negócios e Produção Real
Criação e governança de infraestrutura de chaves públicas interna segura sem custos recorrentes de CAs públicas.

### ⚠️ O Problema Real
Uso de certificados autoassinados sem cadeia válida causa alertas de segurança e inviabiliza mTLS corporativo.

## 🚀 Arquitetura e Engenharia em Bash
Automação completa via OpenSSL em Bash: geração da Root CA offline (mantida desligada), emissão da Intermediate CA operacional, criação de perfis X.509 padronizados (Servidor, Cliente, VPN) e emissão de certificados assinados com CRL e OCSP estritos.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`openssl, date, install, shred`

## 📌 Exemplo de Execução CLI
```bash
./pki_provision.sh --action issue-cert --type server --cn 'api.internal' --days 365
```
