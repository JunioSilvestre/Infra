# Bloqueio de Imagens Não Verificadas com Webhook de Admissão Cosign

## 1. Cenário de Produção Real
Prevenir categoricamente que qualquer membro da equipe dê deploy manual de imagens do Docker Hub pessoal sem passar pelo pipeline de build corporativo.

## 2. O Problema Real
Validar no momento exato do `kubectl apply` se a imagem possui assinatura criptográfica válida da autoridade certificadora da empresa.

## 3. Arquitetura e Engenharia da Solução
Deploy do Cosign Admission Controller / Sigstore Policy Controller validando signatures e attestations diretamente na admissão.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Sigstore Policy Controller, Cosign, Image Verification, Kubernetes Webhooks
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
kubectl apply -f unsigned-pod.yaml || echo 'Blocked: Image signature verification failed'
```
