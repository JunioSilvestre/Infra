# 03 — Pipeline Otimizado para Monorepo com Filtro de Caminhos (Path Filtering)

## 🏢 Cenário de Produção e Vida Real
Repositório corporativo contendo 15 microsserviços compartilhando código comum.

### ⚠️ O Problema Real
Qualquer alteração em um serviço dispara o build desnecessário de todos os 15 serviços, consumindo horas de CI.

## 🚀 Arquitetura e Engenharia de CI/CD
Detecção de arquivos modificados via git diff contra a branch base, resolução de dependências internas e disparo apenas dos jobs afetados.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`git, jq, yq, github-actions`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
./path_filter.sh --base origin/main --output-matrix matrix.json
```
