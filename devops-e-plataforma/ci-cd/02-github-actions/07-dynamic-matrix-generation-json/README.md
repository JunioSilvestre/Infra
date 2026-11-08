# 07 — Geração Dinâmica de Matriz de CI via Script para Pipelines Parametrizados

## 🏢 Cenário de Produção e Vida Real
Pipelines onde a quantidade de jobs depende dos pacotes alterados no commit ou de uma consulta a um banco de dados.

### ⚠️ O Problema Real
Matrizes estáticas em YAML exigem edição manual de código sempre que um novo serviço é adicionado.

## 🚀 Arquitetura e Engenharia de CI/CD
Job inicial que inspeciona o repositório, gera um array JSON de alvos de build, exporta como output ('set-output matrix=...') e alimenta o job seguinte via 'matrix: ${{ fromJson(needs.setup.outputs.matrix) }}'.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`jq, github-actions, bash`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
echo "matrix=$(jq -c . < targets.json)" >> $GITHUB_OUTPUT
```
