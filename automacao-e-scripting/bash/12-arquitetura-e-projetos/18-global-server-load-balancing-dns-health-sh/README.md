# 18 — Balanceador Global de Servidores (GSLB) Baseado em DNS e Roteamento de Saúde

## 🏢 Cenário de Negócios e Produção Real
Distribuição de usuários entre data centers de diferentes continentes (América do Norte, Europa e Ásia).

### ⚠️ O Problema Real
Se um data center sofrer um apagão total de infraestrutura, os clientes continuam sendo direcionados para o IP daquele continente.

## 🚀 Arquitetura e Engenharia em Bash
Sondas ativas de saúde em camada 7 executadas a partir de múltiplos pontos de checagem, integração com servidores de DNS autoritativos (Bind9 com GeoIP ou API cloud), e comutação dinâmica de registros A direcionando o tráfego apenas para os data centers saudáveis com menor latência.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`curl, dig, nsupdate, rndc, jq`

## 📌 Exemplo de Execução CLI
```bash
./gslb_health_router.sh --zones 'us,eu,ap' --domain api.global.net --poll-interval 15
```
