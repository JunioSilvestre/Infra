# 03-redes-e-protocolos — Redes, Protocolos e Firewall

Projetos avançados em Bash para diagnóstico de redes, roteamento, inspeção de pacotes, firewalls com nftables e VPNs.

---

## 🏛️ Trilha de Projetos Práticos de Nível Sênior (20 Projetos Reais)

| # | Projeto | Título / Foco de Negócio | Ferramentas Nativas Chave |
|---|---|---|---|
| **01** | [`01-tcp-handshake-latency-analyzer-sh/`](./01-tcp-handshake-latency-analyzer-sh) | **Analisador de Latência do Three-Way Handshake TCP em Linha de Comando** | `curl, awk, sort, column` |
| **02** | [`02-dns-propagation-multi-resolver-audit-sh/`](./02-dns-propagation-multi-resolver-audit-sh) | **Auditor de Propagação DNS e Integridade de Registros com Múltiplos Resolvers** | `dig, xargs, awk, diff` |
| **03** | [`03-nftables-ddos-rate-limiter-sync-sh/`](./03-nftables-ddos-rate-limiter-sync-sh) | **Rate Limiter Dinâmico Anti-DDoS e Port Scan com nftables** | `nft, ss, iptables, logger` |
| **04** | [`04-ip-route-dual-homed-multi-wan-failover-sh/`](./04-ip-route-dual-homed-multi-wan-failover-sh) | **Failover de Roteamento Multi-WAN com Tabelas de Roteamento Avançadas** | `ip, ping, arping, logger` |
| **05** | [`05-wireguard-site-to-site-mesh-health-sh/`](./05-wireguard-site-to-site-mesh-health-sh) | **Monitor e Auto-Recuperação de Túneis VPN WireGuard Site-to-Site** | `wg, ip, systemctl, date` |
| **06** | [`06-mtu-path-discovery-blackhole-detector-sh/`](./06-mtu-path-discovery-blackhole-detector-sh) | **Detector de MTU Path Black Hole e Ajuste de TCP MSS Clamping** | `ping, tracepath, nft, iptables` |
| **07** | [`07-ssl-handshake-sni-validator-sh/`](./07-ssl-handshake-sni-validator-sh) | **Validador em Linha de Comando de SNI, ALPN e Handshake TLS** | `openssl, awk, grep` |
| **08** | [`08-bgp-looking-glass-route-flapping-sh/`](./08-bgp-looking-glass-route-flapping-sh) | **Monitor de Flapping de Rotas BGP e Alertas de Estabilidade de ASN** | `curl, jq, birdc, vtysh, awk` |
| **09** | [`09-dhcp-rogue-server-hunter-sh/`](./09-dhcp-rogue-server-hunter-sh) | **Caçador de Servidores DHCP Não Autorizados (Rogue DHCP) na LAN** | `dhcping, nmap, tcpdump, awk, logger` |
| **10** | [`10-ssh-certificate-authority-signer-sh/`](./10-ssh-certificate-authority-signer-sh) | **Autoridade Certificadora (CA) SSH para Emissão de Certificados de Usuário e Host** | `ssh-keygen, openssl, date, install` |
| **11** | [`11-tcpdump-automated-pcap-ring-buffer-sh/`](./11-tcpdump-automated-pcap-ring-buffer-sh) | **Captura Contínua de Pacotes com Ring Buffer Circular via tcpdump** | `tcpdump, pkill, df, find, tar` |
| **12** | [`12-reverse-proxy-health-probe-circuit-breaker-sh/`](./12-reverse-proxy-health-probe-circuit-breaker-sh) | **Health Probe Ativo e Circuit Breaker para Upstreams de Proxy Reverso** | `curl, sed, systemctl, flock` |
| **13** | [`13-arp-poisoning-spoofing-monitor-sh/`](./13-arp-poisoning-spoofing-monitor-sh) | **Monitor em Tempo Real de Ataques de ARP Spoofing e Poisoning** | `ip neigh, arpwatch, tcpdump, mailx` |
| **14** | [`14-dynamic-dns-updater-cloudflare-route53-sh/`](./14-dynamic-dns-updater-cloudflare-route53-sh) | **Atualizador de DNS Dinâmico (DDNS) com Autenticação de API para Cloudflare e AWS Route53** | `curl, jq, dig, date` |
| **15** | [`15-vxlan-overlay-tunnel-provisioner-sh/`](./15-vxlan-overlay-tunnel-provisioner-sh) | **Provisionador de Túneis Overlay VXLAN Ponto a Ponto e Multi-Host** | `ip, bridge, sysctl, logger` |
| **16** | [`16-bandwidth-traffic-policer-tc-htb-sh/`](./16-bandwidth-traffic-policer-tc-htb-sh) | **Modelador e Policer de Tráfego de Rede com tc (Traffic Control) e HTB** | `tc, ip, iptables, awk` |
| **17** | [`17-openvpn-pki-client-revocation-crl-sh/`](./17-openvpn-pki-client-revocation-crl-sh) | **Gerenciador de Revogação de Certificados de Clientes OpenVPN e Geração de CRL** | `openssl, systemctl, cp, diff` |
| **18** | [`18-network-socket-leak-ss-monitor-sh/`](./18-network-socket-leak-ss-monitor-sh) | **Monitor de Vazamento de Sockets TCP e Esgotamento de Portas Efêmeras** | `ss, awk, sort, uniq, logger` |
| **19** | [`19-ipam-subnet-ip-scanner-inventory-sh/`](./19-ipam-subnet-ip-scanner-inventory-sh) | **Scanner e Inventariador de Sub-redes IP para Gestão de IPAM Local** | `fping, nmap, dig, ip neigh, jq` |
| **20** | [`20-bgp-ospf-quagga-frr-router-watchdog-sh/`](./20-bgp-ospf-quagga-frr-router-watchdog-sh) | **Watchdog e Validador de Sessões de Roteamento Dinâmico FRRouting (FRR)** | `vtysh, awk, grep, curl` |
