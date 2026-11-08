# 20 — Quarentena Automática de Testes Instáveis e Abertura de Issues no GitHub/Jira

## 🏢 Cenário de Produção e Vida Real
Manutenção da confiança dos desenvolvedores na suíte de testes de integração.

### ⚠️ O Problema Real
Testes instáveis (que passam na 2ª tentativa) atrasam deploys e fazem engenheiros ignorarem falhas legítimas.

## 🚀 Arquitetura e Engenharia de CI/CD
Algoritmo de detecção de testes intermitentes que roda suítes 5 vezes consecutivas, isola o teste em quarentena para não bloquear a esteira principal e abre automaticamente uma issue de investigação no Jira/GitHub.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`pytest, jest, gh-cli, jq`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
./quarantine_flaky_tests.sh --test-suite tests/integration --retries 5
```
