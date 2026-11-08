# 08 — Carregador Declarativo de Configurações em Formatos YAML, JSON e INI

## 🏢 Cenário de Negócios e Produção Real
Scripts que precisam ler parâmetros de arquivos de configuração padronizados sem exigir edição do código Bash.

### ⚠️ O Problema Real
Scripts que usam 'source config.sh' correm risco de execução de código arbitrário se o arquivo de configuração for adulterado.

## 🚀 Arquitetura e Engenharia em Bash
Funções 'load_config_yaml' e 'load_config_json' que utilizam yq/jq ou awk para extrair chaves de forma segura e injetar variáveis no escopo com tipagem (strings, booleanos, arrays), sem usar 'eval' inseguro.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`jq, yq, awk, sed`

## 📌 Exemplo de Execução CLI
```bash
source lib/config.sh && load_yaml /etc/app.yaml 'database.host' 'DB_HOST'
```
