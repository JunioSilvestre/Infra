# 02 — Sincronizador de Jails Customizadas do Fail2ban e Bloqueio Global em Cluster

## 🏢 Cenário de Negócios e Produção Real
Parque de dezenas de servidores web onde um ataque contra uma máquina deve bloquear o IP em todas as outras.

### ⚠️ O Problema Real
Fail2ban padrão age apenas localmente; o invasor rotaciona os nós e continua a força bruta.

## 🚀 Arquitetura e Engenharia em Bash
Extração contínua de IPs banidos via 'fail2ban-client status <jail>', publicação em barramento ou arquivo centralizado seguro e injeção do ban em lote nos demais servidores via nftables.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`fail2ban-client, nft, ssh, jq`

## 📌 Exemplo de Execução CLI
```bash
./fail2ban_cluster_sync.sh --jail sshd --sync-remote /etc/banned_ips.global
```
