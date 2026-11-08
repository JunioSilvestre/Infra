# Segurança de Rede Zero-Trust e Alta Performance com Cilium e eBPF em NYC

## 1. Cenário de Produção Real
Fintech em Manhattan com milhares de microsserviços precisa de isolamento estrito de tráfego L3/L4 e L7 sem a sobrecarga de iptables.

## 2. O Problema Real
Impedir comunicações laterais entre namespaces regulados e monitorar tráfego HTTP/gRPC com rastreabilidade criptográfica de identidades.

## 3. Arquitetura e Engenharia da Solução
Substituição do kube-proxy pelo Cilium em modo eBPF nativo, imposição de CiliumNetworkPolicy e inspeção de fluxos com Hubble UI.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Cilium, eBPF, Hubble, Kubernetes CNI, Linux Kernel 5.15+
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
cilium status --wait && hubble observe --namespace payment --to-label app=fraud-detector
```
