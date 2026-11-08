# 02 — Parser Robusto de Argumentos Curtos e Longos (--flag) em Bash Puro

## 🏢 Cenário de Negócios e Produção Real
Criação de CLIs profissionais de infraestrutura com flags amigáveis e documentadas.

### ⚠️ O Problema Real
O 'getopts' nativo do Bash suporta apenas opções curtas (-a, -b); scripts que tentam fazer parsing manual de opções longas (--option=val) quebram com facilidade.

## 🚀 Arquitetura e Engenharia em Bash
Biblioteca pura em Bash com função 'parse_cli_args' que lê definições declarativas de flags, trata argumentos curtos e longos, valida parâmetros obrigatórios e gera menu '--help' automaticamente.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`shift, case, printf`

## 📌 Exemplo de Execução CLI
```bash
source lib/args.sh && define_arg 'user' 'u' 'Nome do usuário' 'true' && parse_cli_args "$@"
```
