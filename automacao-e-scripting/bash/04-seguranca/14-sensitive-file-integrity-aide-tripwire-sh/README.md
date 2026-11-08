# 14 — Auditor de Integridade de Arquivos Sensíveis do Sistema com AIDE

## 🏢 Cenário de Negócios e Produção Real
Monitoramento de alterações em arquivos críticos de configuração (/etc/passwd, /etc/shadow, /etc/hosts, /bin/login).

### ⚠️ O Problema Real
Invasores adicionam usuários com UID 0 ou modificam bibliotecas sem que a equipe perceba.

## 🚀 Arquitetura e Engenharia em Bash
Execução periódica de 'aide --check', comparação de atributos (inode, permissões, tamanho, hash SHA512), geração de relatório de discrepâncias e alerta com trava de segurança.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`aide, sha512sum, diff, mailx`

## 📌 Exemplo de Execução CLI
```bash
./file_integrity_check.sh --config /etc/aide/aide.conf --update-db-if-clean
```
