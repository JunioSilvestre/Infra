# Provisionamento de Driver CSI do AWS EBS com Criptografia de Volume KMS

## 1. Cenário de Produção Real
Bancos de dados rodando em pods necessitavam de discos persistentes (PVCs) criptografados com chaves KMS gerenciadas pelo cliente.

## 2. O Problema Real
Integrar o driver oficial do AWS EBS CSI ao cluster via IAM Role for Service Accounts sem deixar segredos estáticos.

## 3. Arquitetura e Engenharia da Solução
Configuração do addon EKS `aws-ebs-csi-driver`, role IAM com permissões mínimas no KMS e StorageClass padrão com criptografia forçada.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Terraform, AWS EBS CSI Driver, IRSA, KMS Encryption, StorageClass
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform plan -target=module.ebs_csi_driver
```
