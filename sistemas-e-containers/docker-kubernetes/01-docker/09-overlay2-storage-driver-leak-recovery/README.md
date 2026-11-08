# Investigação e Recuperação de Esgotamento de Inodes e Disco por Driver Overlay2

## 1. Cenário de Produção Real
Servidor de CI com 2TB de NVMe paralisa repentinamente com 'No space left on device' mesmo com `df -h` reportando 40% de espaço livre.

## 2. O Problema Real
Esgotamento de Inodes devido a milhões de pequenos arquivos temporários orfãos gerados por builds de Node.js em camadas docker.

## 3. Arquitetura e Engenharia da Solução
Auditoria via `df -i`, script de saneamento atômico, limpeza seletiva de dangling images e configuração de max-concurrent-downloads.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Docker overlay2, df -i, tune2fs, docker system prune --volumes
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
docker system df -v && docker image prune -a --filter 'until=72h' --force
```
