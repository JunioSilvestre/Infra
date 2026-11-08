# 20 — Watchdog e Validador de Sessões de Roteamento Dinâmico FRRouting (FRR)

## 🏢 Cenário de Negócios e Produção Real
Roteadores de borda Linux rodando FRRouting (FRR) para sessões BGP e OSPF com provedores e data centers.

### ⚠️ O Problema Real
Queda da adjacência OSPF ou sessão BGP em estado 'Active/Connect' isola a rota de saída do data center.

## 🚀 Arquitetura e Engenharia em Bash
Comunicação com o daemon via 'vtysh -c "show ip bgp summary"' e 'show ip ospf neighbor', parsing de estados de quórum com awk, reinício suave de sessões com soft-reconfiguration e alerta crítico via webhook.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`vtysh, awk, grep, curl`

## 📌 Exemplo de Execução CLI
```bash
./frr_watchdog.sh --protocol bgp --expected-peers 4 --alert-on-state-change
```
