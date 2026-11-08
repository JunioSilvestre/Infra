# Módulo de Bucket S3 Blindado para Conformidade Bancária e FinOps

## 1. Cenário de Produção Real
Desenvolvedores frequentemente esqueciam de bloquear acesso público, esqueciam criptografia KMS e não configuravam expiração de logs.

## 2. O Problema Real
Tornar impossível a criação de um bucket S3 inseguro na empresa através de um módulo corporativo opinativo.

## 3. Arquitetura e Engenharia da Solução
Módulo S3 forçando `block_public_access`, criptografia SSE-KMS, versionamento, ciclo de vida com transição para Glacier e regras de auditoria.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** AWS S3, SSE-KMS, S3 Lifecycle Rules, Security Compliance
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform plan -target=module.audit_logs_bucket
```
