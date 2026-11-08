# Aceleração de CI/CD com BuildKit e Cache Remoto em S3 em Hartford

## 1. Cenário de Produção Real
Empresa de seguros em Hartford com centenas de deploys diários sofria com tempos de build de 25 minutos consumindo largura de banda excessiva.

## 2. O Problema Real
Reduzir tempos de build de imagens complexas aproveitando cache remoto compartilhado entre múltiplos runners de CI.

## 3. Arquitetura e Engenharia da Solução
Uso de Docker BuildKit com cache-to e cache-from apontando para bucket S3 corporativo com compressão Zstandard e camadas em paralelo.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Docker Buildx, AWS S3, BuildKit Registry Cache, Zstandard
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
docker buildx build --cache-to type=s3,bucket=ci-cache-hartford,mode=max --cache-from type=s3,bucket=ci-cache-hartford -t app:latest --push .
```
