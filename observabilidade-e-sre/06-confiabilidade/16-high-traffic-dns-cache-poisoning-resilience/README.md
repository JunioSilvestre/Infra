# Resiliência e Cache Local de DNS em Escala de 100k RPS com NodeLocal DNS

## 1. Cenário de Produção Real
Sob tráfego massivo, consultas DNS para serviços internos saturavam o CoreDNS do cluster, causando erros de timeout em cascata.

## 2. O Problema Real
Executar resolução de nomes em cache local diretamente no nó de trabalho via socket de loopback com zero atraso de rede.

## 3. Arquitetura e Engenharia da Solução
Deploy de DaemonSet NodeLocal DNSCache no Kubernetes interceptando tráfego DNS UDP/TCP com cache local em memória.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** NodeLocal DNSCache, Kubernetes CoreDNS Scalability, Network Conntrack Tuning
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
kubectl get pods -n kube-system -l k8s-app=node-local-dns
```
