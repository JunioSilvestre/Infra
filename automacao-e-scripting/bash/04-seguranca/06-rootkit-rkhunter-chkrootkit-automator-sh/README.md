# 06 — Orquestrador e Analisador de Varredura de Rootkits com rkhunter e chkrootkit

## 🏢 Cenário de Negócios e Produção Real
Varredura profunda semanal contra infecções do kernel, módulos ocultos e modificações nos binários essenciais (/bin/ps, /bin/ls).

### ⚠️ O Problema Real
Rootkits alteram comandos de sistema para esconder processos maliciosos e portas de comunicação.

## 🚀 Arquitetura e Engenharia em Bash
Atualização das bases de dados com 'rkhunter --update', execução não interativa com '--cronjob --report-warnings-only', validação de hashes SHA256 dos binários de sistema contra repositório de integridade externa.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`rkhunter, chkrootkit, sha256sum, mailx`

## 📌 Exemplo de Execução CLI
```bash
./rootkit_scan.sh --quick --email sec-alerts@empresa.com --quarantine /tmp/quarantine
```
