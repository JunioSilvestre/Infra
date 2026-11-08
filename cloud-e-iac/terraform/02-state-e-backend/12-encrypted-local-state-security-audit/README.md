# Proteção Criptográfica de Arquivos de Estado em Estações de Trabalho Locais

## 1. Cenário de Produção Real
Durante desenvolvimento e provas de conceito locais, desenvolvedores gravavam estados com senhas e chaves em seus laptops corporativos.

## 2. O Problema Real
Prevenir vazamento de credenciais em caso de furto do equipamento criptografando o arquivo de estado local em repouso.

## 3. Arquitetura e Engenharia da Solução
Configuração experimental de criptografia nativa de estado (Terraform 1.6+) com provedor AES-GCM e chave derivada de passphrase segura.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Terraform State Encryption, AES-GCM, Endpoint Security, Laptop Hardening
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform apply -var-file=local.tfvars
```
