# 11 — Sincronizador e Injetor de Listas Globais de Inteligência de Ameaças (Threat Intel)

## 🏢 Cenário de Negócios e Produção Real
Proteção proativa de redes contra tráfego originado de nós de saída Tor, botnets e scanners maliciosos conhecidos.

### ⚠️ O Problema Real
Bases de dados de ameaças mudam a cada hora; regras estáticas de firewall tornam-se obsoletas rapidamente.

## 🚀 Arquitetura e Engenharia em Bash
Download automatizado de feeds confiáveis (Spamhaus, FireHOL, Emerging Threats) via curl, desduplicação e agregação de CIDRs com awk/aggregate, inserção atômica no firewall via ipset ou conjuntos nftables com zero impacto na latência.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`curl, awk, ipset, nft, sha256sum`

## 📌 Exemplo de Execução CLI
```bash
./threat_intel_sync.sh --feed spamhaus_drop --target-set blacklist_threats
```
