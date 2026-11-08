# Governança de Armazenamento com Azure Blob Storage e Políticas de Imutabilidade

## 1. Cenário de Produção Real
Arquivos de auditoria e logs fiscais precisam ser retidos de forma imutável (Write Once, Read Many - WORM) para atender ao SEC Rule 17a-4.

## 2. O Problema Real
Garantir que nenhum usuário, nem mesmo administradores globais da assinatura, consigam excluir arquivos dentro do período de retenção.

## 3. Arquitetura e Engenharia da Solução
Azure Storage Account com Immutable Blob Storage ativado em nível de container, políticas de retenção temporal e ciclo de vida com tiering para Cool/Archive.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Azure Blob Storage, WORM Storage, SEC Rule 17a-4, Storage Lifecycle Management
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
az storage container immutability-policy create --account-name stauditcorp --container-name audit-records --period 2555
```
