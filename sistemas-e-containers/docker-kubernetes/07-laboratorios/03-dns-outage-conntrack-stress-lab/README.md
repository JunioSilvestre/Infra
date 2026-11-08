# Reprodução e Mitigação de Esgotamento de Tabela de Conntrack e Queda de DNS

## 1. Cenário de Produção Real
Serviços de alto tráfego sofrem falhas repentinas onde conexões para o banco começam a falhar com 'connection timed out' sem motivo aparente.

## 2. O Problema Real
Demonstrar na prática o estouro da tabela `nf_conntrack` do kernel do Linux e ensinar o tuning correto dos parâmetros do sysctl.

## 3. Arquitetura e Engenharia da Solução
Script gerador de milhões de conexões UDP simultâneas, análise de `/proc/net/nf_conntrack` e aplicação de correções de tuning.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Linux conntrack, sysctl, DNS Stress Testing, iptables, Kernel Tuning
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
conntrack -C && sysctl -w net.netfilter.nf_conntrack_max=1048576
```
