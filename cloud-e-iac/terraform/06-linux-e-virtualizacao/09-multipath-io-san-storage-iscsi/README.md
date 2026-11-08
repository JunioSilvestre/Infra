# Conexão Resiliente a Redes SAN com Multipath I/O e iSCSI em Ambientes Empresariais

## 1. Cenário de Produção Real
Falhas em portas de switches Fibre Channel ou placas HBA causavam desconexão e corrupção imediata de volumes de armazenamento corporativo.

## 2. O Problema Real
Configurar múltiplos caminhos físicos redundantes para o mesmo LUN de storage com balanceamento de carga de leitura e escrita.

## 3. Arquitetura e Engenharia da Solução
Configuração do daemon `multipathd` no Linux com políticas `round-robin` e reconexão automática de sessões de armazenamento iSCSI/SAN.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Multipath I/O (DM-Multipath), iSCSI Initiator, SAN Storage, Enterprise Linux Storage
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
multipath -ll
```
