# Monitoramento de Integridade de Arquivos de Sistema com AIDE e Relatórios Diários

## 1. Cenário de Produção Real
Auditores de segurança PCI-DSS exigem monitoramento contínuo contra qualquer alteração em arquivos binários do sistema operacional (`/usr/bin`, `/etc`).

## 2. O Problema Real
Disparar alarmes imediatos caso um atacante instale um backdoor ou modifique arquivos de configuração do sistema.

## 3. Arquitetura e Engenharia da Solução
Deploy automatizado do AIDE (Advanced Intrusion Detection Environment) com banco de hashes SHA-512 e checagens automáticas agendadas.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** AIDE, File Integrity Monitoring (FIM), PCI-DSS Compliance, Security Hardening
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
aide --check
```
