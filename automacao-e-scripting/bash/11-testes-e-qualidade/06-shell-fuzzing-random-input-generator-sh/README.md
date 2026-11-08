# 06 — Fuzzing de Entrada: Testador de Resiliência contra Argumentos e Payloads Malformados

## 🏢 Cenário de Negócios e Produção Real
Homologação de segurança de scripts administrativos expostos a entradas de usuários ou webhooks.

### ⚠️ O Problema Real
Strings gigantes, caracteres especiais e quebras de linha quebram a lógica de scripts despreparados.

## 🚀 Arquitetura e Engenharia em Bash
Gerador de testes em lote que injeta payloads aleatórios (caracteres nulos, strings de 100k caracteres, caminhos relativos maliciosos '../../', caracteres especiais '!$*') e valida se o script trata o erro e encerra de forma segura.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`head, /dev/urandom, xxd, awk`

## 📌 Exemplo de Execução CLI
```bash
./fuzz_script.sh --target ./backup.sh --iterations 200 --log /tmp/fuzz.log
```
