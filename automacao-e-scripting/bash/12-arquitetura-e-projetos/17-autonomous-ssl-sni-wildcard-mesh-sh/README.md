# 17 — Malha Autônoma de Certificados SSL Wildcard com DNS Challenge Automatizado

## 🏢 Cenário de Negócios e Produção Real
Ambientes de nuvem privada com centenas de subdomínios dinâmicos (*.dev.corp.net, *.staging.corp.net).

### ⚠️ O Problema Real
Gerar certificados individuais para cada subdomínio esgota limites de emissão do Let's Encrypt (Rate Limits).

## 🚀 Arquitetura e Engenharia em Bash
Emissão de certificados Wildcard via protocolo ACME utilizando o desafio DNS-01, injeção automatizada do registro TXT de verificação via API do provedor de DNS (Cloudflare/Route53), validação da propagação e distribuição segura dos certificados para os proxies da malha.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`curl, openssl, jq, dig, systemctl`

## 📌 Exemplo de Execução CLI
```bash
./wildcard_mesh.sh --domain '*.stage.corp.net' --dns-provider cloudflare
```
