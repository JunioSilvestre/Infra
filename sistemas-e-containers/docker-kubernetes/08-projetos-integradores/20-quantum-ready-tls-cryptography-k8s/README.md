# Migração Preventiva para Criptografia Pós-Quântica (PQC) em Ingress e mTLS

## 1. Cenário de Produção Real
Instituições federais e grandes bancos se preparando para a era da computação quântica (padrões NIST ML-KEM e Falcon).

## 2. O Problema Real
Garantir que segredos e tráfego de rede transmitidos hoje não possam ser interceptados e decifrados no futuro (ataques 'Store Now, Decrypt Later').

## 3. Arquitetura e Engenharia da Solução
Configuração de Ingress Controller e certificados x509 baseados em algoritmos híbridos de curva elíptica e criptografia pós-quântica NIST.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** NIST Post-Quantum Cryptography (ML-KEM), OpenSSL 3.2+, Nginx Ingress, Cloudflare PQC
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
curl -vI https://quantum-safe.bank.internal --tlsv1.3
```
