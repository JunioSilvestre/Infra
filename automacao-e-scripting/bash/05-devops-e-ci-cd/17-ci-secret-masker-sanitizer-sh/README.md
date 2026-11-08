# 17 — Sanitizador e Mascarador de Segredos e Variáveis de Ambiente em Logs de CI

## 🏢 Cenário de Negócios e Produção Real
Pipelines de CI onde scripts de build ou ferramentas de terceiros acidentalmente imprimem tokens e senhas no stdout/stderr dos logs públicos.

### ⚠️ O Problema Real
Vazamento catastrófico de credenciais nos logs que ficam visíveis para todos os colaboradores no GitHub/GitLab.

## 🚀 Arquitetura e Engenharia em Bash
Wrapper que intercepta toda a saída do pipeline, carrega a lista de nomes e valores de segredos conhecidos, substitui ocorrências por '***REDACTED***' em tempo real antes de gravar nos logs permanentes.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`sed, awk, env, grep`

## 📌 Exemplo de Execução CLI
```bash
./ci_masker.sh --secrets-env 'DB_PASS,API_KEY,AWS_SECRET' -- ./build_script.sh
```
