# 16 — Refatoração e Modularização de Pipelines com Anchors YAML e 'extends'

## 🏢 Cenário de Produção e Vida Real
Manutenção e redução de duplicação em arquivos .gitlab-ci.yml complexos.

### ⚠️ O Problema Real
Centenas de linhas duplicadas contendo as mesmas configurações de imagem, before_script e artefatos em dezenas de jobs.

## 🚀 Arquitetura e Engenharia de CI/CD
Aplicação de boas práticas com YAML Anchors (.template: &template) e herança estruturada com a diretiva 'extends', centralizando definições de tarefas comuns.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`gitlab-ci extends, yaml`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
# job_deploy_prod: extends: .base_deploy environment: production
```
