# 06 — Gerenciamento do Ciclo de Vida de Ambientes Efêmeros para Pull Requests

## 🏢 Cenário de Produção e Vida Real
Validação de features em URLs exclusivas criadas sob demanda para cada PR aberto.

### ⚠️ O Problema Real
Ambientes estáticos compartilhados geram filas e conflito de testes entre desenvolvedores.

## 🚀 Arquitetura e Engenharia de CI/CD
Provisionamento de namespace efêmero no Kubernetes ao abrir o PR, injeção de secrets temporários, e destruição compulsória no fechamento do PR.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`kubectl, helm, github-actions`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
./ephemeral_env.sh --action teardown --pr-id 89
```
