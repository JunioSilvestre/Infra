# Instalação e Configuração do Cilium CNI em Modo Roteamento Nativo e eBPF

## 1. Cenário de Produção Real
Aplicações financeiras de alta vazão sofriam com a sobrecarga de tabelas de iptables do kube-proxy tradicional.

## 2. O Problema Real
Substituir o kube-proxy pelo Cilium em modo eBPF nativo, entregando aceleração de rede e observabilidade Hubble via Terraform.

## 3. Arquitetura e Engenharia da Solução
Deploy do Helm chart do Cilium configurando `kubeProxyReplacement=true`, roteamento nativo e exportação de métricas para o Prometheus.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Terraform, Cilium CNI, eBPF, Hubble, Kubernetes Networking
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform apply -target=helm_release.cilium
```
