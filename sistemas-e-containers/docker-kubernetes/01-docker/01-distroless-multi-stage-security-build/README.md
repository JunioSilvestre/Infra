# Pipeline de Build Multi-Stage com Google Distroless e Assinatura Cosign

## 1. Cenário de Produção Real
Grandes fintechs em NYC (Wall Street) exigem superfícies de ataque mínimas para atender regulações SOX e PCI-DSS em containers voltados à internet.

## 2. O Problema Real
Reduzir o tamanho da imagem de 1.2GB para menos de 45MB, eliminar shell/gerenciadores de pacotes vulneráveis e assinar a imagem criptograficamente antes do deploy.

## 3. Arquitetura e Engenharia da Solução
Multi-stage Dockerfile isolando compilação do runtime, base gcr.io/distroless/static:nonroot, usuário 65532, attestation SBOM com Syft e Cosign.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Docker BuildKit, Google Distroless, Cosign, Syft, Trivy
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
DOCKER_BUILDKIT=1 docker build --target release -t registry.nyse.internal/trade-router:1.0 . && trivy image registry.nyse.internal/trade-router:1.0
```
