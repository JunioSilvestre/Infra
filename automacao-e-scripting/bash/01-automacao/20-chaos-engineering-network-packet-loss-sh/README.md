# 20 — Chaos Engineering Network & Kernel Fault Injector (Bash)

Framework de injeção controlada de falhas (Chaos Engineering) em Bash para testes de resiliência e validação de alta disponibilidade em clusters e aplicações distribuídas no Linux.

## 🏢 Cenário de Negócios (SRE & Resiliência — Testes de Caos em Produção/Staging)
Sistemas distribuídos que operam entre data centers de Nova York e Boston precisam resistir a falhas transitórias de infraestrutura (cabos rompidos, saturação de switches, perda de pacotes e latência intermitente). Este script simula cenários caóticos com rollback garantido por hardware timers e traps de proteção contra perda de controle do nó.

## 🚀 Arquitetura e Engenharia em Bash
- **Emulação de Falhas de Rede via `tc` (Traffic Control / `netem`):**
  - Injeção de latência artificial (ex: `+150ms 20ms distribution normal`).
  - Injeção de perda aleatória de pacotes (ex: `loss 15%`).
  - Corrupção e duplicação de pacotes TCP/UDP (`corrupt 5%`, `duplicate 3%`).
- **Simulação de Partição de Rede (*Split-Brain*):** Criação dinâmica de regras temporárias no `iptables` ou `nftables` bloqueando portas de sincronização de quórum (etcd 2379/2380, Raft, PostgreSQL replication).
- **Mecanismo de Segurança Dead Man's Switch:** Uso de timers no background (`(sleep 300 && ./chaos.sh --abort) &`) para garantir reversão automática mesmo se a sessão SSH do operador cair durante o teste de caos.
- **Armazenamento de Métricas Pré e Pós Caos:** Medição de vazão de rede com `iperf3` e ping jitter para comprovar o impacto da injeção.

## 🛠️ Ferramentas Nativas Utilizadas
- `tc` (Traffic Control do subsistema qdisc do kernel Linux)
- `iptables` / `nftables` (injeção cirúrgica de bloqueios de tráfego)
- `trap` (handlers atômicos para desfazer todas as regras criadas caso o script receba `SIGINT`/`SIGTERM`)
- `ping`, `iperf3` (validação e coleta de métricas de degradação)

## 📌 Exemplo de Execução
```bash
# Injeta 100ms de latência e 10% de perda de pacotes na eth0 durante 120 segundos com rollback automático
sudo ./chaos_injector.sh --interface eth0 --latency 100ms --loss 10% --duration 120s
```

