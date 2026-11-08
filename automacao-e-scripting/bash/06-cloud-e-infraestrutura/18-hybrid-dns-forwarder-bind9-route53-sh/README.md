# 18 — Encaminhador DNS Híbrido entre Servidores Locais Bind9 e AWS Route 53 Outposts

## 🏢 Cenário de Negócios e Produção Real
Integração de resolução de nomes entre servidores on-premise locais e serviços em nuvem (VPC).

### ⚠️ O Problema Real
Máquinas locais não conseguem resolver nomes internos .internal da VPC e instâncias em nuvem não resolvem domínios corporativos locais.

## 🚀 Arquitetura e Engenharia em Bash
Geração dinâmica de zonas de forward em /etc/bind/named.conf.local apontando para os Inbound Resolvers da AWS, validação com named-checkconf e recarga graciosa do daemon Bind9 sem perda de consultas.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`named-checkconf, rndc, systemctl, dig`

## 📌 Exemplo de Execução CLI
```bash
./hybrid_dns_sync.sh --zone corp.internal --dns-forwarder 10.100.0.2 --test
```
