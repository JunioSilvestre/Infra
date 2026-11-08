# 20 — Monitor Sintético de Jornada de Usuário Ponta a Ponta com curl Timing

## 🏢 Cenário de Negócios e Produção Real
Verificação contínua se o fluxo principal do sistema (Login -> Consulta -> Checkout) está funcionando sem erros.

### ⚠️ O Problema Real
Página inicial responde 200 OK, mas a API de checkout interno está quebrada.

## 🚀 Arquitetura e Engenharia em Bash
Execução em sequência de requisições curl autenticadas com persistência de cookies (curl -b / -c), extração de tokens CSRF/JWT com grep/jq, medição de tempos de resposta por etapa e emissão de relatório completo de disponibilidade.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`curl, jq, grep, date, awk`

## 📌 Exemplo de Execução CLI
```bash
./synthetic_journey.sh --base-url 'https://app.corp.com' --credentials /etc/test_user.json
```
