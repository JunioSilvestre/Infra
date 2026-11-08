# Isolamento Extremo de Workloads Não Confiáveis com gVisor (runsc)

## 1. Cenário de Produção Real
Plataforma de SaaS em NY que permite a clientes executarem scripts Python customizados enviados via API.

## 2. O Problema Real
Impedir que código malicioso execute chamadas de sistema (syscalls) diretas no kernel do Linux do host.

## 3. Arquitetura e Engenharia da Solução
Registro do runtime `runsc` no `/etc/docker/daemon.json` e execução de containers isolados por um kernel de aplicação em userspace.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** gVisor, runsc, Docker Daemon Config, Linux Seccomp
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
docker run --runtime=runsc --rm -it python:3.11-alpine python -c 'import os; print(os.uname())'
```
