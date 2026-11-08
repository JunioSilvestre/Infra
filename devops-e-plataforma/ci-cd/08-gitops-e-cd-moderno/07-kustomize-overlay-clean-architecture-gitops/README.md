# 07 — Arquitetura Limpa de Overlays Kustomize para Gestão Multi-Ambiente

## 🏢 Cenário de Produção e Vida Real
Estruturação padronizada de manifestos Kubernetes evitando repetição de código comum.

### ⚠️ O Problema Real
Diretórios de dev, staging e prod contendo cópias inteiras dos mesmos manifestos com pequenas variações de variáveis.

## 🚀 Arquitetura e Engenharia de CI/CD
Separação em base/ (manifestos comuns imutáveis) e overlays/ (dev, staging, prod) aplicando patches JSON 6902 cirúrgicos para réplicas, limites de recursos e variáveis de ambiente.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`kustomize, kubectl`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
kustomize build overlays/production | kubectl apply --dry-run=client -f -
```
