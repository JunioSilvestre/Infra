# Construção de Ambiente SFTP Blindado em Chroot Jail para Parceiros Financeiros

## 1. Cenário de Produção Real
Clientes e bancos parceiros precisavam enviar arquivos de remessa diários via SFTP, mas não podiam ter acesso a nenhuma outra pasta do servidor.

## 2. O Problema Real
Isolar completamente os usuários dentro de seus respectivos diretórios raiz sem acesso a shells, comandos de sistema ou outros clientes.

## 3. Arquitetura e Engenharia da Solução
Configuração do OpenSSH Server com diretivas `Match Group sftp-partners`, `ChrootDirectory /data/sftp/%u` e `ForceCommand internal-sftp`.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** OpenSSH Server, SFTP Chroot Jail, Linux POSIX Permissions, Audit Logging
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
sftp -P 2222 partner@sftp.corp.internal
```
