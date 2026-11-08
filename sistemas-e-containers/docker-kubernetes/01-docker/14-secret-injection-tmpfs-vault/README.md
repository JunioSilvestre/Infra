# Injeção Segura de Certificados e Segredos em Memória RAM com tmpfs

## 1. Cenário de Produção Real
Compliance de segurança bancária proíbe gravação de chaves privadas SSH e certificados de clientes em discos permanentes do container.

## 2. O Problema Real
Disponibilizar chaves de autenticação apenas durante a execução sem persistir dados no storage layer ou em dumps de disco.

## 3. Arquitetura e Engenharia da Solução
Montagem de volumes temporários na RAM via `--tmpfs /secrets:rw,noexec,nosuid,size=16m` consumidos por scripts de bootstrap.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Docker tmpfs, Linux RAMFS, HashiCorp Vault Agent, OpenSSL
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
docker run --tmpfs /run/secrets:rw,noexec,nosuid,size=32m -d financial-worker:latest
```
