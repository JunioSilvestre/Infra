# 15 — Internal PKI & ACME TLS Certificate Lifecycle Manager (Bash)

Script avançado em Bash para gerenciamento do ciclo de vida de certificados digitais TLS/mTLS, renovação automatizada via protocolo ACME e recarga sem downtime de proxies reversos.

## 🏢 Cenário de Negócios (Segurança & Criptografia — Infraestruturas Privadas)
Em ambientes corporativos com centenas de microsserviços internos e gateways de API, certificados TLS expirados causam interrupções catastróficas de negócios. Este script atua como um gerenciador leve que inspeciona diariamente todos os certificados locais, renova aqueles com menos de 30 dias de validade e recarrega serviços sem derrubar conexões ativas.

## 🚀 Arquitetura e Engenharia em Bash
- **Inspeção de Certificados com `openssl`:** Extração direta de datas de validade (`openssl x509 -enddate -noout -in cert.pem`) e cálculo de dias restantes com `date -d`.
- **Geração de CSRs e Chaves Privadas:** Criação de chaves ECDSA P-384 / RSA 4096 com permissões estritas `0600` via `openssl req -newkey`.
- **Automação de Desafio ACME (HTTP-01 / DNS-01):** Interação pura com servidores ACME (Let's Encrypt / Vault / Smallstep) via `curl` e autenticação JWT/JWS assinada em Bash.
- **Recarga Graciosa de Serviços:** Envio de sinal SIGHUP para daemons (`systemctl reload nginx`, `systemctl reload haproxy`) apenas se o teste de configuração for aprovado (`nginx -t`).

## 🛠️ Ferramentas Nativas Utilizadas
- `openssl` (geração de chaves, parsing x509, CSRs e verificação de cadeias CA)
- `date` (cálculo de tempo de expiração em época Unix `%s`)
- `curl` (comunicação com endpoints ACME REST/JSON)
- `systemctl` (validação de sintaxe e reload de serviços de borda)

## 📌 Exemplo de Execução
```bash
./tls_cert_manager.sh --scan-dir /etc/ssl/certs --threshold-days 30 --reload-cmd "systemctl reload nginx"
```

