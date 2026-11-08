# 05 — Orquestrador de Pipelines Multi-Projetos com Triggers Cruzados e Dependências

## 🏢 Cenário de Produção e Vida Real
Sistemas corporativos onde o build de um microsserviço precisa acionar testes de integração em um repositório central de E2E.

### ⚠️ O Problema Real
Falta de visibilidade do impacto de uma alteração de serviço em todo o ecossistema integrado.

## 🚀 Arquitetura e Engenharia de CI/CD
Uso da diretiva 'trigger: project: ...' com 'strategy: depend', repasse de variáveis de commit e bloqueio do pipeline do serviço caso os testes de integração do repositório central falhem.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`gitlab-ci triggers, curl`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
# trigger: project: 'qa/e2e-suite' strategy: depend
```
