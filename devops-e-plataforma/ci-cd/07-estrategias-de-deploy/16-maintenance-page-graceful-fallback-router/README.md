# 16 — Roteador de Página de Manutenção com Fallback Gracioso e Bypass por IP

## 🏢 Cenário de Produção e Vida Real
Janelas de manutenção planejada com interrupção temporária de serviços legados que não suportam zero downtime.

### ⚠️ O Problema Real
Exibir erros genéricos de servidor fora do ar ou bloquear a própria equipe de manutenção de testar a página.

## 🚀 Arquitetura e Engenharia de CI/CD
Regra dinâmica no proxy reverso que retorna página HTML de manutenção estilizada com HTTP 503 (para não quebrar SEO de buscadores) e permite bypass imediato para IPs da VPN de engenharia.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`nginx, curl, sed`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
./maintenance_toggle.sh --mode enable --allowed-ips '10.0.0.50,198.51.100.4'
```
