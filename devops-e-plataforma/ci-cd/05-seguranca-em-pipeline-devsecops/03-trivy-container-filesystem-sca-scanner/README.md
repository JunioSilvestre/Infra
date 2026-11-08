# 03 — Varredura Completa de Vulnerabilidades (SCA) em Imagens de Containers com Trivy

## 🏢 Cenário de Produção e Vida Real
Bloqueio de imagens de containers que contêm pacotes de sistema ou bibliotecas com vulnerabilidades conhecidas (CVEs).

### ⚠️ O Problema Real
Uso de imagens base antigas (ex: node:14) com dezenas de CVEs críticas exploradas ativamente na internet.

## 🚀 Arquitetura e Engenharia de CI/CD
Varredura automatizada da imagem compilada via Trivy antes do push para o registry, falhando o build se houver CVEs de severidade CRITICAL sem patch disponível.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`trivy, jq, docker`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
trivy image --severity CRITICAL,HIGH --ignore-unfixed --exit-code 1 my-image:latest
```
