# Bloqueio de Imagens Não Assinadas no Kubernetes com Gatekeeper e Ratify

## 1. Cenário de Produção Real
Garantir no cluster que nenhum pod consiga ser iniciado se a imagem não contiver uma assinatura digital válida da corporação.

## 2. O Problema Real
Impedir ataques onde um atacante injeta uma imagem externa maliciosa diretamente no namespace de produção.

## 3. Arquitetura e Engenharia da Solução
Instalação do Ratify integrado ao OPA Gatekeeper interceptando requisições de admissão e checando assinaturas via Notary Project / Notation.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Ratify, OPA Gatekeeper, Notation, Cosign, Kubernetes Admission Webhooks
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
kubectl apply -f ratify-verification-policy.yaml
```
