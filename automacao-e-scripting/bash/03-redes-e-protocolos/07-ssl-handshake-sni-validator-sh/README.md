# 07 — Validador em Linha de Comando de SNI, ALPN e Handshake TLS

## 🏢 Cenário de Negócios e Produção Real
Diagnóstico de falhas de roteamento em proxies reversos que utilizam SNI (Server Name Indication) para dezenas de domínios no mesmo IP.

### ⚠️ O Problema Real
Clientes antigos ou microsserviços falham ao conectar porque o servidor entrega o certificado default incorreto.

## 🚀 Arquitetura e Engenharia em Bash
Emulação de handshake TLS via 'openssl s_client -connect ip:443 -servername dominio -alpn h2,http/1.1', extração da cadeia de certificados e validação do protocolo negociado.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`openssl, awk, grep`

## 📌 Exemplo de Execução CLI
```bash
./tls_sni_check.sh --host 198.51.100.1 --sni api.jcscode.com --expect-alpn h2
```
