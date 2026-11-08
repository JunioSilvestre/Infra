# 18 — Auditor de Manifestos Kubernetes com KubeLinter contra Más Configurações de Segurança

## 🏢 Cenário de Produção e Vida Real
Validação de deployments Kubernetes antes da sincronização no cluster de produção.

### ⚠️ O Problema Real
Containers rodando com 'privileged: true', montando o socket do host ou sem readiness probes configuradas.

## 🚀 Arquitetura e Engenharia de CI/CD
Execução do KubeLinter com checagens estritas de segurança (run-as-non-root, read-only-root-fs, drop-capabilities), bloqueando manifestos perigosos.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`kube-linter, yq`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
kube-linter lint ./k8s/ --config .kube-linter.yaml
```
