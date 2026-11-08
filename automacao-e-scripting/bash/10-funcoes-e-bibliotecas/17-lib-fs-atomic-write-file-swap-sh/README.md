# 17 — Gerenciador de Escrita Atômica de Arquivos e Troca Segura (Swap)

## 🏢 Cenário de Negócios e Produção Real
Atualização de arquivos de configuração essenciais (/etc/hosts, configurações de proxy) sem risco de corrupção.

### ⚠️ O Problema Real
Se o script quebrar no meio da escrita de um arquivo de configuração, o arquivo fica vazio ou corrompido.

## 🚀 Arquitetura e Engenharia em Bash
Função 'atomic_write' que cria arquivo temporário com permissões herdadas, valida o conteúdo, sincroniza buffers em disco com 'sync' e executa a substituição atômica via syscall rename ('mv -f').

## 🛠️ Ferramentas Nativas Linux Utilizadas
`mktemp, sync, mv, chmod, chown`

## 📌 Exemplo de Execução CLI
```bash
source lib/fs.sh && atomic_write --target /etc/myapp.conf --source /tmp/new.conf
```
