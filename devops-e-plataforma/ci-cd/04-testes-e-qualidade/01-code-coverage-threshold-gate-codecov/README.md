# 01 — Portão de Cobertura de Código com Trava Mínima e Relatório Visual (Codecov/Coveralls)

## 🏢 Cenário de Produção e Vida Real
Garantia de que novos Pull Requests não diminuam a porcentagem global de cobertura de testes da aplicação.

### ⚠️ O Problema Real
Desenvolvedores adicionam centenas de linhas de lógica de negócio sem escrever testes unitários.

## 🚀 Arquitetura e Engenharia de CI/CD
Execução da suíte com geração de relatórios LCOV/Cobertura, cálculo de cobertura do diff do PR, bloqueio do merge se a cobertura cair mais de 0.5% ou se linhas novas tiverem <80% de cobertura.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`codecov-action, lcov, pycobertura`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
codecov --file coverage.xml --fail-under=80
```
