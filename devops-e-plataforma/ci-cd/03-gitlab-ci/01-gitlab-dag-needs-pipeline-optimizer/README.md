# 01 — Otimizador de Pipeline com Directed Acyclic Graph (DAG) e Diretiva 'needs'

## 🏢 Cenário de Produção e Vida Real
Eliminação de gargalos em pipelines sequenciais onde jobs independentes esperavam desnecessariamente estágios anteriores inteiros terminarem.

### ⚠️ O Problema Real
O build do frontend ficava bloqueado esperando a conclusão de testes do backend no mesmo stage.

## 🚀 Arquitetura e Engenharia de CI/CD
Reestruturação do .gitlab-ci.yml substituindo estágios rígidos pela diretiva 'needs', permitindo que jobs iniciem imediatamente assim que suas dependências diretas forem concluídas.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`gitlab-ci, yaml`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
# Configuração 'needs: [job_anterior]' para execução assíncrona desacoplada
```
