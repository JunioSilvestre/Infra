# Criptografia em Repouso do etcd com Provedor AWS KMS / Vault

## 1. Cenário de Produção Real
Em caso de backup corrompido ou acesso não autorizado aos discos do control plane, todos os segredos do cluster poderiam ser lidos.

## 2. O Problema Real
Garantir que todos os recursos do tipo `Secret` sejam criptografados antes de serem gravados nas tabelas de chave-valor do etcd.

## 3. Arquitetura e Engenharia da Solução
Configuração do `EncryptionConfiguration` no kube-apiserver com provedor KMS externo e rotação automática de chaves criptográficas.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Kubernetes etcd, EncryptionConfiguration, AWS KMS, Envelope Encryption
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
kubectl get secrets -n kube-system test-secret -o yaml
```
