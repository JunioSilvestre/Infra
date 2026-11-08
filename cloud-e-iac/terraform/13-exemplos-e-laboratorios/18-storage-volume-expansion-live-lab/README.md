# Laboratório de Expansão a Quente de Volumes de Armazenamento sem Parada

## 1. Cenário de Produção Real
O disco de dados de uma instância de produção atinge 95% de ocupação e não pode ser desligado para redimensionamento.

## 2. O Problema Real
Aumentar a capacidade de armazenamento no Terraform e expandir o sistema de arquivos Linux sem reiniciar o servidor.

## 3. Arquitetura e Engenharia da Solução
Alteração do tamanho de disco no código HCL, aplicação com `apply` e execução remota de `growpart` e `resize2fs/xfs_growfs`.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** EBS Volume Expansion, Online Filesystem Resize, Linux Storage Administration
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
growpart /dev/nvme1n1 1 && resize2fs /dev/nvme1n1p1
```
