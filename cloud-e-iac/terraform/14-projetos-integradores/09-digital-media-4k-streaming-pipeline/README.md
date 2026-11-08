# Infraestrutura de Distribuição e Processamento de Mídia 4K em Manhattan

## 1. Cenário de Produção Real
Produtora de conteúdo audiovisual precisa transcodificar e distribuir transmissões ao vivo em alta definição com latência mínima de entrega.

## 2. O Problema Real
Orquestrar instâncias de transcodificação aceleradas por hardware (GPU) e distribuição global com terminação SSL na borda.

## 3. Arquitetura e Engenharia da Solução
Stack integrada com instâncias EC2 G5, storage de alta performance NVMe, distribuição CloudFront com Origin Shield e DNS Anycast.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Terraform, AWS CloudFront Origin Shield, EC2 GPU Instances, S3 Multi-Tier
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform apply -target=module.media_streaming_platform
```
