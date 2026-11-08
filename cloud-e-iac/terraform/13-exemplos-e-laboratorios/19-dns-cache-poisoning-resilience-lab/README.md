# Laboratório de Resiliência de DNS e Validação Criptográfica com DNSSEC

## 1. Cenário de Produção Real
Simular tentativas de envenenamento de cache de DNS em consultas de serviços internos e validar o bloqueio via DNSSEC.

## 2. O Problema Real
Garantir a integridade criptográfica das respostas de resolução de nomes entre zonas públicas e privadas da empresa.

## 3. Arquitetura e Engenharia da Solução
Configuração de chaves KSK e ZSK no Route53, ativação de validação DNSSEC e testes de consulta com `dig +dnssec`.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** DNSSEC, Route53 Security, Cryptographic Integrity, Network Defense
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
dig api.corp.internal +dnssec +multiline
```
