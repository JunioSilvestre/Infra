# 10 — Enforcer de Quality Gate do SonarQube via Linha de Comando

## 🏢 Cenário de Negócios e Produção Real
Esteiras de CI que precisam travar o pipeline caso a análise estática aponte falhas graves de segurança ou cobertura insuficiente.

### ⚠️ O Problema Real
Desenvolvedores ignoram alertas de vulnerabilidades no painel web do Sonar se o CI não falhar explicitamente.

## 🚀 Arquitetura e Engenharia em Bash
Polling via API REST do SonarQube (/api/qualitygates/project_status?analysisId=...), extração do status com jq, verificação de métricas violadas (Bugs, Vulnerabilities, Code Smells) e saída com exit code não-zero para travar a esteira.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`curl, jq, sleep, logger`

## 📌 Exemplo de Execução CLI
```bash
./sonar_gate.sh --sonar-url 'https://sonar.corp.com' --task-id 'AX1234' --token '$SONAR_TOKEN'
```
