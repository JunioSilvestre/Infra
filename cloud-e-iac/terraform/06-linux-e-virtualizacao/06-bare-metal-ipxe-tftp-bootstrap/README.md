# Orquestração de Boot em Rede e Provisionamento Desassistido com iPXE e TFTP

## 1. Cenário de Produção Real
Novos racks de servidores físicos entregues no datacenter demoravam dias para serem instalados por pendrive ou console IPMI.

## 2. O Problema Real
Ligar o servidor na tomada e fazer com que ele baixe a imagem do sistema operacional pela rede e se instale sozinho de forma 100% desassistida.

## 3. Arquitetura e Engenharia da Solução
Infraestrutura de servidor DHCP/TFTP servindo binários iPXE que carregam instaladores Kickstart (RHEL) e Preseed (Ubuntu) automatizados.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** iPXE, TFTP, PXE Boot, Kickstart / Preseed, Bare-Metal Automation
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform apply -target=module.pxe_server
```
