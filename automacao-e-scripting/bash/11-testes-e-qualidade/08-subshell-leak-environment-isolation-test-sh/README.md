# 08 — Auditor de Vazamento de Variáveis e Poluição de Escopo em Subshells

## 🏢 Cenário de Negócios e Produção Real
Bibliotecas e scripts modulares compartilhados onde variáveis temporárias não devem vazar para o shell do chamador.

### ⚠️ O Problema Real
Uma biblioteca sobrescreve acidentalmente a variável '$PATH' ou '$USER' do script principal.

## 🚀 Arquitetura e Engenharia em Bash
Comparação de dumps de ambiente via 'env' e 'set' antes e depois de carregar ou executar a função, identificando variáveis globais não declaradas com 'local' ou não limpas.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`env, diff, comm, sort`

## 📌 Exemplo de Execução CLI
```bash
./test_scope_isolation.sh --library ./lib/utils.sh
```
