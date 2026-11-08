# 11 — Automação Declarativa de Registros DNS com ExternalDNS em GitOps

## 🏢 Cenário de Produção e Vida Real
Criação e remoção automática de entradas de DNS (Route 53, Cloudflare) sincronizadas com Ingress e Services.

### ⚠️ O Problema Real
Criar o Ingress no Kubernetes e esquecer de apontar o registro DNS correspondente no painel da nuvem.

## 🚀 Arquitetura e Engenharia de CI/CD
Deploy do ExternalDNS via GitOps, escutando anotações em Ingress/Service e atualizando registros A/CNAME no provedor de DNS externo de forma automática com registros TXT de controle de ownership.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`external-dns, helm, kubectl`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
kubectl logs -n kube-system deploy/external-dns
```
