# Ambiente de Processamento de Cartão de Crédito com Isolamento Total PCI-DSS

## 1. Cenário de Produção Real
Gateway financeiro precisa isolar completamente o Cardholder Data Environment (CDE) para obter certificação de segurança de nível 1.

## 2. O Problema Real
Garantir que nenhum pod fora do escopo de auditoria consiga enviar ou receber pacotes dos servidores de processamento de cartão de crédito.

## 3. Arquitetura e Engenharia da Solução
Cluster dedicado ou namespace blindado com Cilium L7 Policies, mTLS obrigatório, auditoria de syscalls com Tetragon e criptografia de disco.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Cilium L7 Policy, Tetragon, HashiCorp Vault, PCI-DSS Architecture
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
kubectl get ciliumnetworkpolicies -n cde-workloads
```
