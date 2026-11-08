# Limpeza Preventiva de Disco e Evacuação de Nós com DaemonSet SRE

## 1. Cenário de Produção Real
Picos inesperados de escrita em logs causavam DiskPressure, travamento de Kubelet e expulsão (eviction) descontrolada de dezenas de pods vitais.

## 2. O Problema Real
Detectar preventivamente nós com espaço de disco acima de 85% e expurgar imagens mortas e logs antigos antes do Kubelet entrar em pânico.

## 3. Arquitetura e Engenharia da Solução
DaemonSet privilegiado com acesso ao host que monitora capacidade via df e executa docker/crictl rmi com notificação via webhook.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Kubernetes DaemonSet, crictl, Kubelet Eviction Thresholds, Bash
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
kubectl get daemonset node-disk-cleaner -n kube-system
```
