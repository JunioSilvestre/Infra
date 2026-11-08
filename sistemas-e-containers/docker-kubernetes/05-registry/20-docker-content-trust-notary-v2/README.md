# Validação de Confiança de Conteúdo e Integridade de Imagens com Notary v2

## 1. Cenário de Produção Real
Prevenir ataques de Homem-no-Meio (MITM) ou redirecionamento de DNS que possam fazer servidores puxarem imagens alteradas.

## 2. O Problema Real
Forçar clientes Docker e Kubelets a rejeitarem qualquer imagem cujo hash e assinatura não correspondam aos metadados do autor confiável.

## 3. Arquitetura e Engenharia da Solução
Habilitação de DOCKER_CONTENT_TRUST=1 e provisionamento de chaves de assinatura raiz com Notary v2 em conformidade com OCI.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Docker Content Trust, Notary Project, Cryptographic Signatures, OCI Spec
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
export DOCKER_CONTENT_TRUST=1 && docker pull registry.trusted.corp/base-os:1.0
```
