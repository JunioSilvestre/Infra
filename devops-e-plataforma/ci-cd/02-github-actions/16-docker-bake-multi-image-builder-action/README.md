# 16 — Construção Concorrente de Múltiplas Imagens Docker com Docker Buildx Bake

## 🏢 Cenário de Produção e Vida Real
Aplicações que exigem construção simultânea de containers de frontend, backend e workers a partir de uma única definição.

### ⚠️ O Problema Real
Rodar múltiplos comandos 'docker build' em sequência duplica o tempo total do pipeline.

## 🚀 Arquitetura e Engenharia de CI/CD
Uso do 'docker/bake-action' lendo um arquivo declarativo 'docker-bake.hcl', executando o build de todos os alvos em paralelo com reaproveitamento de contextos de build compartilhados.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`docker/bake-action, docker-buildx`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
docker buildx bake --push --file docker-bake.hcl
```
