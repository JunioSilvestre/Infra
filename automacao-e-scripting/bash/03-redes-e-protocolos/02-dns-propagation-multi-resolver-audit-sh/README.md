# 02 — Auditor de Propagação DNS e Integridade de Registros com Múltiplos Resolvers

## 🏢 Cenário de Negócios e Produção Real
Mudança crítica de registros DNS (A, CNAME, MX, TXT) em janelas de deploy global.

### ⚠️ O Problema Real
Caches DNS inconsistentes em diferentes provedores causam tráfego direcionado a IPs antigos, gerando indisponibilidade.

## 🚀 Arquitetura e Engenharia em Bash
Consultas paralelas com dig via xargs contra servidores raiz, Cloudflare (1.1.1.1), Google (8.8.8.8), Quad9 (9.9.9.9) e DNS autoritativo do domínio, comparando TTLs e respostas.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`dig, xargs, awk, diff`

## 📌 Exemplo de Execução CLI
```bash
./dns_audit.sh --domain jcscode.com --record A --expected-ip 198.51.100.1
```
