# Construção de Políticas Customizadas do SELinux sem Desativar o Modo Enforcing

## 1. Cenário de Produção Real
Administradores despreparados frequentemente desativavam o SELinux (`setenforce 0`) para resolver erros de permissão de aplicações corporativas.

## 2. O Problema Real
Garantir segurança obrigatória (Mandatory Access Control) mantendo o SELinux no modo Enforcing através de módulos de políticas customizadas.

## 3. Arquitetura e Engenharia da Solução
Análise de auditoria via `audit2allow`, criação de arquivos de Type Enforcement (`.te`), compilação de módulos de política e aplicação via Terraform.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** SELinux (Security-Enhanced Linux), audit2allow, semanage, Type Enforcement
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
sestatus && getsebool -a | grep httpd
```
