# Criptografia de Enlace Físico de Camada 2 (MACsec) em Conexões de Fibra

## 1. Cenário de Produção Real
Regulações de segurança bancária do Federal Reserve exigem que todo tráfego de dados trafegado em links físicos dedicados seja criptografado em L2.

## 2. O Problema Real
Proteger contra grampos físicos de fibra óptica e interceptação de pacotes de rede entre datacenters.

## 3. Arquitetura e Engenharia da Solução
Configuração de chaves de associação de segurança MACsec (CKN/CAK) em portas de Direct Connect com verificação de integridade de hardware.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** IEEE 802.1AE MACsec, Layer 2 Encryption, High-Security Networking
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
aws directconnect describe-direct-connect-gateway-associations
```
