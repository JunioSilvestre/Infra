# 08 — Deploy de Banco de Dados com Padrão Expand & Contract para Zero Downtime

## 🏢 Cenário de Produção e Vida Real
Renomeação ou alteração de tipo de colunas em tabelas de milhões de registros sem travar a aplicação.

### ⚠️ O Problema Real
Alterar o banco antes do código derruba a versão antiga; alterar depois derruba a versão nova.

## 🚀 Arquitetura e Engenharia de CI/CD
Execução em fases: 1) Expand (adiciona nova coluna nullable e sincroniza via trigger), 2) Deploy do código novo escrevendo em ambas, 3) Contract (migra dados legados e remove a coluna antiga).

## 🛠️ Ferramentas e Tecnologias Utilizadas
`psql, flyway, dotnet-ef`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
./run_expand_contract.sh --phase expand --migration AddNewColumn
```
