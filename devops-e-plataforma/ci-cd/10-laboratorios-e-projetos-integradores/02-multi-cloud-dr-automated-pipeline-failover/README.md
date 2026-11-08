# 02 — Esteira Integrada de Deploy Multi-Cloud e Failover Automatizado de Desastre

## 🏢 Cenário de Produção e Vida Real
Aplicações de altíssima disponibilidade distribuídas simultaneamente entre AWS e Microsoft Azure.

### ⚠️ O Problema Real
Indisponibilidade de um provedor de nuvem requer comutação instantânea de esteiras e deploys de contingência.

## 🚀 Arquitetura e Engenharia de CI/CD
Pipeline que compila o código uma única vez, publica containers em registries de ambas as nuvens (ECR e ACR), aplica manifestos nos clusters EKS e AKS em paralelo e testa health checks globais.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`aws-cli, az-cli, kubectl, helm`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
./multi_cloud_deploy.sh --primary aws --secondary azure --version v3.0.0
```
