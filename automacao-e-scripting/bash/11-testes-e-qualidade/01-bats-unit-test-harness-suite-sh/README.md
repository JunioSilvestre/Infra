# 01 — Suíte Completa de Testes Unitários para Scripts Bash com BATS-core

## 🏢 Cenário de Negócios e Produção Real
Criação de esteira de testes automatizados para bibliotecas e scripts corporativos de infraestrutura.

### ⚠️ O Problema Real
Scripts de infraestrutura raramente são testados antes de rodarem em produção, gerando surpresas.

## 🚀 Arquitetura e Engenharia em Bash
Estrutura de testes usando BATS-core com fixtures de setup/teardown, asserções de saída de stdout/stderr, verificação de códigos de retorno ($status) e relatórios no formato TAP / JUnit XML para o CI.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`bats, bats-assert, bats-support`

## 📌 Exemplo de Execução CLI
```bash
bats test/ --formatter tap
```
