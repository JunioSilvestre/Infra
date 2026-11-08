# Escaneamento Contínuo e Bloqueio de Imagens Vulneráveis no Harbor Registry

## 1. Cenário de Produção Real
Uma imagem considerada segura há 3 meses pode se tornar vulnerável hoje devido à descoberta de novas CVEs críticas de dia zero.

## 2. O Problema Real
Auditar periodicamente todas as imagens em repouso no registry corporativo e revogar automaticamente permissão de pull para pods de produção.

## 3. Arquitetura e Engenharia da Solução
Configuração do Trivy Adapter integrado ao Harbor agendado para rodar diariamente às 02h com política de bloqueio para severidade CRITICAL.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Harbor Pluggable Scanners, Trivy, CVE Lifecycle, Vulnerability Governance
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
curl -s -u admin:pass https://harbor.internal/api/v2.0/projects/prod/repositories/api/artifacts | jq
```
