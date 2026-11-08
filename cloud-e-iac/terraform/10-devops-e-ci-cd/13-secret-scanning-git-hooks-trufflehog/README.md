# Bloqueio Automatizado de Segredos em Repositórios com TruffleHog e Gitleaks

## 1. Cenário de Produção Real
Risco constante de desenvolvedores realizarem commits de senhas, chaves privadas ou tokens de API acidentalmente nos arquivos HCL.

## 2. O Problema Real
Interromper o pipeline e bloquear o push caso qualquer arquivo contenha padrões de segredos conhecidos.

## 3. Arquitetura e Engenharia da Solução
Integração de TruffleHog e Gitleaks no estágio inicial do pipeline de CI e em pre-commit hooks nos computadores dos desenvolvedores.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** TruffleHog, Gitleaks, Secret Detection, DevSecOps Prevention
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
trufflehog git file://. --only-verified
```
