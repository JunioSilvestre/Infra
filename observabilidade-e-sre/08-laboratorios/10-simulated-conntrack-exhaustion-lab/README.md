# Reprodução e Mitigação de Esgotamento de Tabela Conntrack no Kernel Linux

## 1. Cenário de Produção Real
Serviços sob tráfego massivo começam a apresentar conexões travadas com 'connection timed out' sem motivo aparente na aplicação.

## 2. O Problema Real
Diagnosticar o estouro do limite máximo de conexões rastreadas pelo netfilter no kernel e aplicar o tuning correto dos parâmetros sysctl.

## 3. Arquitetura e Engenharia da Solução
Script gerador de milhares de conexões UDP simultâneas, leitura de `/proc/net/nf_conntrack` e aplicação de tuning de aumento de capacidade.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Linux conntrack Table, Netfilter Tuning, sysctl, High-Scale Networking
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
conntrack -C && sysctl -w net.netfilter.nf_conntrack_max=1048576
```
