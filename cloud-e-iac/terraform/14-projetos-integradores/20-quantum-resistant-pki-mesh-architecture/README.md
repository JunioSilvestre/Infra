# Infraestrutura de Chave Pública Resistente à Computação Quântica (PQC)

## 1. Cenário de Produção Real
Instituições federais e grandes bancos se preparando preventivamente para a era dos computadores quânticos segundo padrões do NIST.

## 2. O Problema Real
Proteger a infraestrutura e o tráfego de dados de hoje contra ataques futuros de decodificação retroativa (Store Now, Decrypt Later).

## 3. Arquitetura e Engenharia da Solução
Deploy de autoridade certificadora privada provisionando certificados híbridos pós-quânticos (ML-KEM / Falcon) integrados a balanceadores e VPNs.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Terraform, Post-Quantum Cryptography (PQC), NIST Standards, OpenSSL 3.2, AWS ACM Private CA
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform apply -target=module.quantum_resistant_pki
```
