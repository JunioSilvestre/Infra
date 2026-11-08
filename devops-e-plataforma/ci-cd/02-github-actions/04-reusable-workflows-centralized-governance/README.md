# 04 — Governança Centralizada com Reusable Workflows e Templates Corporativos

## 🏢 Cenário de Produção e Vida Real
Padronização das esteiras de build, teste e deploy para mais de 50 repositórios da empresa.

### ⚠️ O Problema Real
Cada time cria seu próprio workflow, divergindo em regras de segurança e versionamento de ferramentas.

## 🚀 Arquitetura e Engenharia de CI/CD
Criação de repositório central '.github-workflows' com workflows reutilizáveis ('workflow_call'), exigindo que os repositórios filhos chamem apenas a esteira homologada.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`github-actions, yaml`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
# uses: my-corp/.github-workflows/.github/workflows/standard-build.yml@v2
```
