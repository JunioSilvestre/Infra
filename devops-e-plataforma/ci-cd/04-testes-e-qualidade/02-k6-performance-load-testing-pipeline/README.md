# 02 — Pipeline de Testes de Carga Automatizados com k6 e Verificação de SLAs de Latência

## 🏢 Cenário de Produção e Vida Real
Validação de performance em ambiente de staging antes de autorizar o deploy para produção.

### ⚠️ O Problema Real
Deploy de código ineficiente que causa degradação de latência sob tráfego real de clientes.

## 🚀 Arquitetura e Engenharia de CI/CD
Execução automatizada de cenários em JavaScript com k6, injeção de 500 VUs (Virtual Users), validação de thresholds estritos (http_req_duration p(95) < 200ms e taxa de erros < 1%) e exportação para o CI.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`k6, jq, github-actions`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
k6 run --out json=results.json tests/load_test.js
```
