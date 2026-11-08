# 15 — Honeypot SSH Leve em Bash com Captura de Credenciais de Ataque

## 🏢 Cenário de Negócios e Produção Real
Servidor de armadilha exposto na porta 2222 ou 22 para coletar senhas e IPs de botnets ativas antes que atinjam a rede interna.

### ⚠️ O Problema Real
Falta de visibilidade das táticas e padrões de força bruta utilizados contra a infraestrutura da empresa.

## 🚀 Arquitetura e Engenharia em Bash
Criação de listener leve em Bash usando socat ou nc, simulação do banner OpenSSH, gravação de cada tentativa de login (usuário, senha, IP de origem, timestamp) em JSON estruturado e alimentação automática da lista de ban.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`socat, nc, awk, jq, logger`

## 📌 Exemplo de Execução CLI
```bash
./ssh_honeypot.sh --port 2222 --log /var/log/honeypot_attacks.json --auto-ban
```
