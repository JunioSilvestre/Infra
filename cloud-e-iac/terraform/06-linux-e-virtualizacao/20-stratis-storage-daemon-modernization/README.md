# Modernização de Armazenamento Local com Stratis Storage em Red Hat Enterprise Linux

## 1. Cenário de Produção Real
Administradores de sistemas precisavam de recursos avançados de pool de storage, thin provisioning e snapshots sem a complexidade manual do LVM.

## 2. O Problema Real
Implementar gerenciamento declarativo de storage simplificado em instâncias RHEL utilizando o daemon moderno Stratis.

## 3. Arquitetura e Engenharia da Solução
Configuração de pools Stratis agregando múltiplos volumes de disco, criação de sistemas de arquivos com crescimento dinâmico e snapshots atômicos.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Stratis Storage Daemon, Thin Provisioning, XFS, Red Hat Enterprise Linux (RHEL 9)
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
stratis pool list && stratis filesystem list
```
