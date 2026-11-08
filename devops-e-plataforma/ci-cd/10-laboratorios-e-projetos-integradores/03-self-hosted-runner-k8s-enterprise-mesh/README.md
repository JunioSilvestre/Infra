# 03 — Malha Empresarial de Runners Auto-Hospedados em Kubernetes com ARC e Isolamento

## 🏢 Cenário de Produção e Vida Real
Plataforma interna de computação de CI/CD para atender mais de 500 desenvolvedores com segurança e velocidade máxima.

### ⚠️ O Problema Real
Custos exorbitantes com runners hospedados em nuvem e falta de acesso seguro a redes privadas da empresa.

## 🚀 Arquitetura e Engenharia de CI/CD
Cluster Kubernetes dedicado com Actions Runner Controller (ARC) em auto-scale, volumes NVMe compartilhados para cache de compilação, e rede restrita por NetworkPolicies impedindo acesso lateral.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`helm, kubectl, actions-runner-controller, calico`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
./deploy_runner_cluster.sh --max-scale 100 --namespace ci-runners
```
