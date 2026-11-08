# 06 — Portão de Qualidade Rigoroso de Clean Code e Débito Técnico com SonarQube / SonarCloud

## 🏢 Cenário de Produção e Vida Real
Manutenção contínua dos padrões arquiteturais e impedimento de aumento de débito técnico em bases corporativas.

### ⚠️ O Problema Real
Código com complexidade ciclomática absurda e duplicações massivas é aprovado sem revisão rigorosa.

## 🚀 Arquitetura e Engenharia de CI/CD
Análise estática profunda cobrindo Bugs, Vulnerabilidades, Code Smells e Linhas Duplicadas, exigindo status 'PASSED' no Quality Gate para liberação de merge.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`sonar-scanner, sonarcloud, jq`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
sonar-scanner -Dsonar.qualitygate.wait=true
```
