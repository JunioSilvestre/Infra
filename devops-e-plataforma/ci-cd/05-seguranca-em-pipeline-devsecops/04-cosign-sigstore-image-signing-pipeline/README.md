# 04 — Assinatura Criptográfica de Imagens de Containers com Cosign (Sigstore) e Keyless Signing

## 🏢 Cenário de Produção e Vida Real
Garantia de que apenas imagens geradas e homologadas na esteira oficial possam ser executadas no cluster Kubernetes.

### ⚠️ O Problema Real
Invasores podem fazer push de imagens maliciosas diretamente para o registry e burlar o CI.

## 🚀 Arquitetura e Engenharia de CI/CD
Assinatura criptográfica da imagem no pipeline via Cosign utilizando OIDC (Keyless signing com Fulcio e Rekor), registrando a assinatura no próprio registry OCI.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`cosign, crane, sigstore`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
cosign sign --yes ghcr.io/my-org/my-app@sha256:abc1234
```
