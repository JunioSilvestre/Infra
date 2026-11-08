# 02 — Gerador de Dynamic Child Pipelines para Monorepos no GitLab

## 🏢 Cenário de Produção e Vida Real
Geração dinâmica de pipelines filhos sob demanda conforme a análise de arquivos modificados.

### ⚠️ O Problema Real
Configurações monolíticas de .gitlab-ci.yml com milhares de linhas tornam-se inauditáveis.

## 🚀 Arquitetura e Engenharia de CI/CD
Job inicial que gera um arquivo YAML de pipeline filho em tempo de execução e dispara o trigger ('trigger: include: artifact: generated-pipeline.yml, strategy: depend').

## 🛠️ Ferramentas e Tecnologias Utilizadas
`gitlab-ci, jq, yq, bash`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
./generate_child_pipeline.sh --output generated-pipeline.yml
```
