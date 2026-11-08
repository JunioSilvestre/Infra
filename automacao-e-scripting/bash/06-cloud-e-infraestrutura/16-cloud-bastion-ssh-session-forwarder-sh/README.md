# 16 — Encaminhador de Conexões Seguras com Bastion Host em Nuvem e SSH ProxyJump

## 🏢 Cenário de Negócios e Produção Real
Acesso a instâncias em sub-redes privadas sem IPs públicos (bancos de dados RDS, nós de cluster interno).

### ⚠️ O Problema Real
Engenheiros abrem portas de banco para a internet pública para facilitar o acesso de manutenção.

## 🚀 Arquitetura e Engenharia em Bash
Configuração dinâmica de túneis SSH e sockets UNIX via 'ssh -W %h:%p' ou ProxyJump, estabelecimento de multiplexação com ControlMaster e expiração automática de túneis após inatividade.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`ssh, nc, awk, logger`

## 📌 Exemplo de Execução CLI
```bash
./cloud_tunnel.sh --bastion bastion.cloud.net --target 10.0.10.50 --port 5432 --local-port 5433
```
