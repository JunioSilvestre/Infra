# Deploy do Istio Service Mesh em Modo Ambient sem Injeção de Sidecars

## 1. Cenário de Produção Real
O consumo excessivo de memória dos proxies sidecar do Istio encarecia os custos operacionais dos clusters em mais de 30%.

## 2. O Problema Real
Adotar a nova arquitetura Ambient Mesh do Istio, separando o proxy L4 (ztunnel) do proxy L7 (waypoint) para máxima eficiência.

## 3. Arquitetura e Engenharia da Solução
Provisionamento do Istio base, istio-cni e ztunnel via Helm releases integradas no Terraform com mTLS habilitado por padrão.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Terraform, Istio Ambient Mesh, ztunnel, eBPF, Zero-Sidecar Mesh
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform apply -target=helm_release.istio_ambient
```
