# 09 — Verificador de Propagação de Códigos de Saída em Pipelines (pipefail)

## 🏢 Cenário de Negócios e Produção Real
Diagnóstico de scripts que utilizam pipes (cmd1 | cmd2) onde a primeira etapa falha mas o script continua achando que deu sucesso.

### ⚠️ O Problema Real
Sem 'set -o pipefail', o status code do pipeline é o da última etapa; se um 'tar' falha mas o 'gzip' termina, a falha é mascarada.

## 🚀 Arquitetura e Engenharia em Bash
Suíte de testes que força falhas em estágios intermediários de comandos encadeados, verificando se o array PIPESTATUS e as opções de segurança 'set -euo pipefail' propagam o erro corretamente.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`set -o pipefail, ${PIPESTATUS[@]}`

## 📌 Exemplo de Execução CLI
```bash
./test_pipeline_errors.sh --script ./data_export.sh
```
