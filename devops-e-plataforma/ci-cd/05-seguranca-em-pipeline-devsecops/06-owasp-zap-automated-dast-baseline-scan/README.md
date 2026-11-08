# 06 — Varredura Dinâmica de Segurança (DAST) em Aplicações Web com OWASP ZAP

## 🏢 Cenário de Produção e Vida Real
Testes de penetração automatizados contra a aplicação rodando em ambiente de staging efêmero.

### ⚠️ O Problema Real
Vulnerabilidades que só aparecem em runtime (cabeçalhos HTTP incorretos, cookies sem flags Secure/HttpOnly, SSRF).

## 🚀 Arquitetura e Engenharia de CI/CD
Subida da aplicação, execução do scanner DAST OWASP ZAP em modo baseline/full scan via container Docker e emissão de alertas de falhas críticas antes da promoção para produção.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`zaproxy, docker, curl`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
docker run -v $(pwd):/zap/wrk/:rw zaproxy/zap-stable zap-baseline.py -t https://staging.corp.com -r zap_report.html
```
