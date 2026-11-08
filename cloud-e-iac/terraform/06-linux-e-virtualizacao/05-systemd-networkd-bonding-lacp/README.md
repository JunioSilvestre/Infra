# Configuração Automatizada de Agregação de Links (Bonding LACP) em Servidores Bare-Metal

## 1. Cenário de Produção Real
Servidores de banco de dados bare-metal exigiam 20Gbps de vazão agregada e redundância de placa de rede física sem ponto único de falha.

## 2. O Problema Real
Configurar automaticamente interfaces físicas em modo 802.3ad (LACP) via arquivos declarativos de rede sem intervenção manual de cabos.

## 3. Arquitetura e Engenharia da Solução
Injeção de configurações do `systemd-networkd` e `systemd-resolved` configurando bond0 com agregação de links LACP e MTU 9000 (Jumbo Frames).

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Linux Bonding (802.3ad LACP), systemd-networkd, Jumbo Frames, Bare-Metal Networking
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
cat /proc/net/bonding/bond0
```
