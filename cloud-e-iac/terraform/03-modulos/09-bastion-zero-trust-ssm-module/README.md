# Módulo de Bastion Host Seguro sem Portas Abertas via AWS Systems Manager

## 1. Cenário de Produção Real
Servidores bastion tradicionais mantinham a porta 22 (SSH) aberta para a internet, sendo alvo de ataques de força bruta contínuos.

## 2. O Problema Real
Permitir acesso administrativo a recursos privados na VPC sem nenhuma porta aberta no firewall e sem gerenciamento de chaves SSH.

## 3. Arquitetura e Engenharia da Solução
Módulo provisionando instância EC2 mínima com perfil IAM para AWS SSM Session Manager, logs gravados no CloudWatch e IP público desabilitado.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** AWS SSM Session Manager, Zero-Trust Bastion, IAM Instance Profile, No SSH Keys
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
aws ssm start-session --target $(terraform output -raw bastion_id)
```
