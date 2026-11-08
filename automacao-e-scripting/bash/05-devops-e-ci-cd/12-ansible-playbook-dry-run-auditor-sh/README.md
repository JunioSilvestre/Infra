# 12 — Auditor de Playbooks Ansible em Modo Dry-Run (--check) com Relatório de Impacto

## 🏢 Cenário de Negócios e Produção Real
Validação de playbooks de configuração de servidores antes da aplicação real em centenas de nós.

### ⚠️ O Problema Real
Playbooks com erros lógicos alteram configurações em massa e causam indisponibilidade de múltiplos nós.

## 🚀 Arquitetura e Engenharia em Bash
Execução de 'ansible-playbook --check --diff', captura das tarefas com status 'changed', geração de relatório tabular consolidando o que seria alterado em cada host e exigência de aprovação manual para o deploy real.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`ansible-playbook, awk, sed, column`

## 📌 Exemplo de Execução CLI
```bash
./ansible_dry_audit.sh --playbook site.yml --inventory hosts.prod --report /tmp/impact.md
```
