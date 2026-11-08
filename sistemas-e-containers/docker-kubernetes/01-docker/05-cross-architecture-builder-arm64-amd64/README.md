# Infraestrutura de Build Multi-Arquitetura ARM64/AMD64 com QEMU e Buildx

## 1. Cenário de Produção Real
Migração corporativa para instâncias AWS Graviton (ARM64) com exigência de retrocompatibilidade com clusters bare-metal legados x86_64.

## 2. O Problema Real
Produzir manifest lists multi-arch transparentemente no pipeline de entrega contínua sem depender de hardware dedicado para cada arquitetura.

## 3. Arquitetura e Engenharia da Solução
Instalação de emuladores binfmt-support, registro de nós buildx remotos e geração de OCI image indexes unificados.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Docker Buildx, QEMU binfmt, OCI Manifest List, GitHub Actions Runner
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
docker buildx build --platform linux/amd64,linux/arm64 -t registry.corp/analytics:v2.1 --push .
```
