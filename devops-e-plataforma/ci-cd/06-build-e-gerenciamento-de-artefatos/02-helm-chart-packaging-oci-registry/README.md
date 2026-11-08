# 02 — Empacotamento, Versionamento e Publicação de Helm Charts como Artefatos OCI

## 🏢 Cenário de Produção e Vida Real
Distribuição de Helm Charts corporativos diretamente em OCI Registries (Harbor, ECR, GHCR) sem necessidade de servidores ChartMuseum dedicados.

### ⚠️ O Problema Real
Charts armazenados como arquivos em repositórios Git causam inconsistências de versão e lentidão de deploy.

## 🚀 Arquitetura e Engenharia de CI/CD
Execução de lint com 'helm lint', atualização de versão semântica no Chart.yaml, empacotamento com 'helm package' e upload autenticado via 'helm push chart.tgz oci://registry.corp/charts'.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`helm, yq, crane`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
helm package ./my-chart && helm push my-chart-1.2.0.tgz oci://ghcr.io/my-org/charts
```
