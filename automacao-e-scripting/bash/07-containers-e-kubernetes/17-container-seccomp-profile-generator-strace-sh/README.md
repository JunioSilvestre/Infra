# 17 — Gerador de Perfis Seccomp para Containers Baseado em Rastreamento strace

## 🏢 Cenário de Negócios e Produção Real
Endurecimento de segurança de containers para bloquear chamadas de sistema não utilizadas pela aplicação.

### ⚠️ O Problema Real
Criar perfis Seccomp manualmente é complexo e bloqueios errados quebram o container em runtime.

## 🚀 Arquitetura e Engenharia em Bash
Execução da aplicação sob strace capturando todas as chamadas de sistema realizadas durante os testes funcionais ('strace -f -c -e trace=all'), compilação da lista de syscalls permitidas e geração do arquivo JSON do perfil Seccomp pronto para Kubernetes.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`strace, awk, sort, uniq, jq`

## 📌 Exemplo de Execução CLI
```bash
./generate_seccomp.sh --command '/usr/local/bin/api-server' --output /etc/seccomp/api.json
```
