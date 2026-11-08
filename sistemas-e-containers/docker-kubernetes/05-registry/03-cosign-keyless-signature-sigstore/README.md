# Assinatura Criptográfica de Imagens sem Chave (Keyless) com Sigstore e Cosign

## 1. Cenário de Produção Real
Risco de vazamento de chaves privadas de assinatura em pipelines de CI comprometidos e ataques de Supply Chain na esteira de software.

## 2. O Problema Real
Assinar imagens garantindo identidade de quem gerou o build sem gerenciar ou armazenar chaves privadas de longa duração.

## 3. Arquitetura e Engenharia da Solução
Integração do Cosign com provedores OpenID Connect (OIDC) do GitHub Actions, gerando certificados de curta duração emitidos pela CA Fulcio e Rekor.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Sigstore Cosign, Fulcio CA, Rekor Transparency Log, OIDC Identity
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
cosign sign --yes registry.corp.com/financial/trade-engine:v1.0
```
