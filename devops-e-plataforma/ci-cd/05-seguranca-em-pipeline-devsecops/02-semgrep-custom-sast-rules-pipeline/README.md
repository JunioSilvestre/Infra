# 02 — Análise Estática de Segurança (SAST) com Semgrep e Regras Corporativas Customizadas

## 🏢 Cenário de Produção e Vida Real
Detecção de padrões inseguros de código (SQL Injection, XSS, Injeção de Comandos, Criptografia Fraca) antes do merge.

### ⚠️ O Problema Real
Linters comuns não detectam fluxos de dados maliciosos nem vulnerabilidades lógicas de segurança.

## 🚀 Arquitetura e Engenharia de CI/CD
Execução do Semgrep com conjuntos de regras owasp-top-ten e regras internas corporativas, gerando relatórios SARIF para a aba de segurança do GitHub/GitLab.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`semgrep, jq, sarif-tools`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
semgrep scan --config p/owasp-top-ten --sarif --output semgrep.sarif
```
