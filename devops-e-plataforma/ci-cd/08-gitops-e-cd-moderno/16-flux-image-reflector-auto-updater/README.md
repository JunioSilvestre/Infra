# 16 — Atualização Automática de Tags de Imagem no Git com ImageReflector do Flux

## 🏢 Cenário de Produção e Vida Real
Deploy contínuo automatizado onde o próprio cluster detecta novas imagens no registry e comita a atualização no Git.

### ⚠️ O Problema Real
Necessidade de configurar tokens de escrita no Git dentro de dezenas de esteiras de build de containers.

## 🚀 Arquitetura e Engenharia de CI/CD
Controlador ImageReflector e ImageUpdateAutomation do Flux escutando o registry de containers, identificando novas tags semânticas e executando commit assinado no repositório Git com a nova versão.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`flux-image-automation, git, oci-registry`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
flux get image update -A
```
