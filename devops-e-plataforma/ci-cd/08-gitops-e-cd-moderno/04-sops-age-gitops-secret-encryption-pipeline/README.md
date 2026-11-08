# 04 — Gestão e Criptografia de Segredos em Repositórios GitOps com Mozilla SOPS e Age

## 🏢 Cenário de Produção e Vida Real
Armazenamento seguro de senhas e chaves criptografadas diretamente no repositório Git junto com os manifestos.

### ⚠️ O Problema Real
Comitar segredos em texto plano no Git viola todas as normas de segurança; usar ferramentas externas desacopla o GitOps.

## 🚀 Arquitetura e Engenharia de CI/CD
Criptografia de arquivos de Secret Kubernetes via SOPS utilizando chaves assimétricas Age (.sops.yaml), permitindo versionar os segredos no Git e decodificar automaticamente no cluster via controlador do ArgoCD/Flux.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`sops, age, flux, kubectl`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
sops -e -i k8s/overlays/prod/secrets.yaml
```
