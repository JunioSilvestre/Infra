# 16 — Validador e Auditor do Modo Dry-Run (--dry-run) em Scripts Administrativos

## 🏢 Cenário de Negócios e Produção Real
Garantia de que a flag '--dry-run' realmente impeça qualquer modificação no sistema.

### ⚠️ O Problema Real
Desenvolvedores adicionam a flag --dry-run mas esquecem de proteger comandos de escrita em certas branches condicionais.

## 🚀 Arquitetura e Engenharia em Bash
Execução do script com '--dry-run' em um ambiente rastreado por monitor de integridade de arquivos, verificando se nenhum arquivo foi criado, alterado ou excluído e nenhum serviço foi reiniciado.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`find, stat, systemctl, diff`

## 📌 Exemplo de Execução CLI
```bash
./verify_dry_run.sh --script ./cleaner.sh --flag '--dry-run'
```
