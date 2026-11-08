# Criptografia Ponto a Ponto e TLS Mútuo Estrito com Linkerd Mesh

## 1. Cenário de Produção Real
Regulamentações de privacidade em Massachusetts exigem que todo tráfego de dados médicos entre pods seja criptografado em trânsito.

## 2. O Problema Real
Criptografar automaticamente todas as conexões TCP entre microsserviços sem precisar reescrever código legado de aplicação.

## 3. Arquitetura e Engenharia da Solução
Injeção automática do proxy sidecar ultraleve do Linkerd em todos os namespaces com imposição de `ServerAuthorization` e mTLS estrito.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Linkerd Service Mesh, mTLS, Zero-Config Encryption, Healthcare Compliance
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
linkerd viz edges -n emr-workloads
```
