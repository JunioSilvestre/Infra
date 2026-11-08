# 20 — Deployer de Atualização Contínua (Rolling Update) Nó por Nó com Drenagem de Tráfego

## 🏢 Cenário de Negócios e Produção Real
Parque de servidores de aplicação rodando sobre bare-metal ou VMs sem orquestrador Kubernetes.

### ⚠️ O Problema Real
Atualizar todos os nós simultaneamente causa queda de 100% da aplicação para todos os clientes.

## 🚀 Arquitetura e Engenharia em Bash
Loop controlado por nós: remoção do nó da rota do balanceador (drain connections), espera de encerramento de requisições ativas (sleep/graceful stop), atualização de código e assets, subida do novo daemon, validação do /healthcheck local e reinserção no balanceador antes de seguir para o próximo nó.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`ssh, curl, systemctl, haproxy, logger`

## 📌 Exemplo de Execução CLI
```bash
./rolling_deploy.sh --hosts 'app01,app02,app03' --version v2.4.0 --drain-seconds 30
```
