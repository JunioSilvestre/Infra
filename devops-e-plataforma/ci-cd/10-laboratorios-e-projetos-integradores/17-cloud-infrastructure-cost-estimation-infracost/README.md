# 17 — Estimador e Portão de Custos de Infraestrutura em Nuvem nos Pull Requests com Infracost

## 🏢 Cenário de Produção e Vida Real
Visibilidade do impacto financeiro de alterações em código Terraform antes de autorizar o merge.

### ⚠️ O Problema Real
Desenvolvedores alteram o tamanho de instâncias ou criam recursos caros na nuvem sem perceberem que a fatura vai dobrar.

## 🚀 Arquitetura e Engenharia de CI/CD
Execução automatizada do Infracost analisando os planos Terraform no PR, cálculo da diferença de custo mensal em dólares (+US$ 150/mês) e comentário automático com a discriminação financeira no Pull Request.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`infracost, terraform, gh-cli`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
infracost breakdown --path ./terraform --format json
```
