# 14 — Validador e Lint de Manifestos Kubernetes e Kustomize com kubeval e conftest

## 🏢 Cenário de Negócios e Produção Real
Validação de arquivos YAML de Kubernetes no pipeline de CI antes de serem aplicados no cluster pelo ArgoCD/Flux.

### ⚠️ O Problema Real
Manifestos com erros de API deprecada ou configurações inseguras (executando como root, sem limites de recursos) quebram no cluster.

## 🚀 Arquitetura e Engenharia em Bash
Build de overlays com 'kustomize build', validação de sintaxe e schemas com 'kubeconform', checagem de políticas de segurança corporativa com 'conftest' (Open Policy Agent) e bloqueio com logs claros.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`kustomize, kubeconform, conftest, yq`

## 📌 Exemplo de Execução CLI
```bash
./validate_manifests.sh --overlay ./overlays/production --strict-schema
```
