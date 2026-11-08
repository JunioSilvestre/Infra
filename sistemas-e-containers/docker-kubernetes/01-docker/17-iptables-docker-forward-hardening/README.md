# Hardening de Firewall de Host e Bloqueio de Portas Expostas pelo Docker

## 1. Cenário de Produção Real
Administradores de rede em Connecticut constataram que regras do UFW eram ignoradas pelo Docker, expondo bancos de dados para a internet.

## 2. O Problema Real
Docker manipula diretamente a cadeia NAT do iptables antes das regras tradicionais do UFW/firewalld.

## 3. Arquitetura e Engenharia da Solução
Configuração da cadeia DOCKER-USER no iptables para filtrar tráfego externo e permitir conexões apenas de redes autorizadas da VPN.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** iptables, UFW, Docker Networking, CIDR Filtering
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
iptables -I DOCKER-USER -i eth0 ! -s 10.50.0.0/16 -j DROP
```
