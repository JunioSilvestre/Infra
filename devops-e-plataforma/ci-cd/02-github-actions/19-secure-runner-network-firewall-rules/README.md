# 19 — Firewall de Rede e Isolamento de Tráfego de Saída (Egress) em Runners

## 🏢 Cenário de Produção e Vida Real
Prevenção contra exfiltração de dados e chamadas externas maliciosas vindas de dependências de terceiros comprometidas.

### ⚠️ O Problema Real
Pacotes maliciosos baixados no 'npm install' tentam enviar segredos da máquina para servidores C2 externos.

## 🚀 Arquitetura e Engenharia de CI/CD
Configuração de regras estritas de firewall via iptables/nftables no host do runner antes da execução do job, permitindo saída apenas para endpoints aprovados (GitHub, registries corporativos).

## 🛠️ Ferramentas e Tecnologias Utilizadas
`iptables, nftables, bash`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
./runner_firewall.sh --allow-domains 'github.com,registry.npmjs.org'
```
