# 02 — Roteador e Orquestrador de Deploys Blue/Green com Proxy Dinâmico e Zero Downtime

## 🏢 Cenário de Negócios e Produção Real
Publicação de versões principais de sistemas bancários e portais de e-commerce sem derrubar nenhuma requisição em voo.

### ⚠️ O Problema Real
Deploys tradicionais causam breves quedas de conexão ou misturam versões de assets em cache.

## 🚀 Arquitetura e Engenharia em Bash
Gerenciamento de dois pools isolados (Blue e Green), subida e aquecimento da nova versão, sincronização de sessões, alteração atômica da tabela de roteamento no proxy local via sockets UNIX e monitoramento de taxa de erro com rollback instantâneo.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`haproxy, curl, socat, awk, jq`

## 📌 Exemplo de Execução CLI
```bash
./blue_green_router.sh --target green --smoke-test /health --rollback-on-error
```
