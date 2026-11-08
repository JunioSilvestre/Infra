# 11 — Tratador de Testes Instáveis (Flaky Tests) e Auto-Retry Inteligente via API

## 🏢 Cenário de Produção e Vida Real
Pipelines que falham esporadicamente por instabilidades de rede externa ou timeouts transitórios.

### ⚠️ O Problema Real
Desenvolvedores precisam dar re-run manual no pipeline inteiro por causa de um teste que falhou por timeout.

## 🚀 Arquitetura e Engenharia de CI/CD
Configuração da diretiva nativa 'retry: max: 2, when: [runner_system_failure, stuck_or_timeout_failure]' e script de watchdog que monitora falhas de infraestrutura e re-executa apenas o job afetado.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`gitlab-ci retry, curl, jq`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
# retry: max: 2 when: [script_failure, api_failure]
```
