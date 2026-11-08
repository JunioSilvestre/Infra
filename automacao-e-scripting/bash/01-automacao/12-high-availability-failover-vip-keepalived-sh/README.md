# 12 — High-Availability Failover & Virtual IP Manager (Bash)

Script de orquestração em Bash para gerenciar failover de alta disponibilidade (HA) com Virtual IP (VIP), validação de saúde de serviços e integração com Keepalived/Corosync.

## 🏢 Cenário de Negócios (Data Centers NJ/NY — Negociação de Alta Frequência e Gateways)
Em clusters de servidores proxy e gateways de pagamento em Nova York e Nova Jersey, uma queda de serviço não pode gerar perda de conexão. O tráfego precisa ser redirecionado para o nó de contingência em milissegundos através da migração de um IP Virtual compartilhado.

## 🚀 Arquitetura e Engenharia em Bash
- **Checagem de Saúde em Camada 4 e 7:** Scripts de probe que verificam se as portas estão em escuta (`ss -tulpn`) e se as rotas HTTP respondem 200 OK via `/dev/tcp/127.0.0.1/443` ou `curl`.
- **Migração de IP Atômica:** Execução de `ip addr add $VIP/24 dev $IFACE` e envio de pacotes gratuitous ARP (`arping -U -c 3 -I $IFACE $VIP`) para atualizar imediatamente as tabelas de switching e roteadores da rede local.
- **Transição de Estados (MASTER/BACKUP/FAULT):** Handlers acionados por sinais do Keepalived executando ações de isolamento (fencing) e reinicialização de daemons caídos.
- **Prevenção de Split-Brain:** Verificação por ping cruzado e heartbeat antes de assumir a liderança do cluster.

## 🛠️ Ferramentas Nativas Utilizadas
- `ip` (`ip addr`, `ip route` para controle dinâmico da pilha de rede do kernel)
- `arping` (notificação de novo endereço MAC para a tabela ARP da rede)
- `ss` / `nc` (inspeção de sockets TCP/UDP sem travar a CPU)
- `logger` (registro de transições de cluster no syslog do sistema)

## 📌 Exemplo de Execução
```bash
./vip_manager.sh --vip 192.168.10.100 --interface eth0 --action promote
./healthcheck_probe.sh --service nginx --port 443 --timeout 2
```

