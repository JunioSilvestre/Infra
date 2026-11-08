# 15 — Portão de CI para Detecção de Dependências Não Utilizadas e Código Morto

## 🏢 Cenário de Produção e Vida Real
Higienização contínua de código para reduzir superfície de ataque e tamanho de bundles de frontend e backend.

### ⚠️ O Problema Real
Bibliotecas instaladas no passado permanecem no repositório gerando avisos de vulnerabilidade desnecessários.

## 🚀 Arquitetura e Engenharia de CI/CD
Execução de ferramentas de análise estática (depcheck, knip) no pipeline, travando o build se forem detectados pacotes no package.json que não são importados em nenhum arquivo.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`depcheck, knip, bash`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
npx depcheck --ignores 'eslint,prettier'
```
