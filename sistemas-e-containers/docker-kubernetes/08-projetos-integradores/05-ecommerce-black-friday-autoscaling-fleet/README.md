# Infraestrutura de E-commerce Preparada para 500k RPS com KEDA e Karpenter

## 1. Cenário de Produção Real
Grande varejista online que atende o mercado consumidor do Tri-State (NY, NJ, CT) precisa absorver explosões de tráfego instantâneas.

## 2. O Problema Real
O cluster precisa provisionar dezenas de novos servidores baremetal/nuvem em menos de 45 segundos para responder à entrada em massa de clientes.

## 3. Arquitetura e Engenharia da Solução
Combinação do Karpenter provisionando instâncias EC2 otimizadas, KEDA escalando pods por métricas de filas e PDBs protegendo a estabilidade.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Karpenter, KEDA, Ingress-Nginx, AWS EKS, Prometheus, Grafana
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
kubectl get nodepool,nodeclaim -A
```
