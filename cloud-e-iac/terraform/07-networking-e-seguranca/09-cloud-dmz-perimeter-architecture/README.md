# Arquitetura de Zona Desmilitarizada (DMZ) com Isolamento de Borda e Aplicação

## 1. Cenário de Produção Real
Aplicações públicas voltadas para internet residiam nas mesmas subnets de serviços de processamento de regras de negócio internas.

## 2. O Problema Real
Construir uma barreira perimetral (DMZ) separando categoricamente tráfego não confiável de tráfego confiável da rede corporativa.

## 3. Arquitetura e Engenharia da Solução
Topologia com VPC DMZ pública, VPC Interna e VPC de Dados, interconectadas exclusivamente via gateways com inspeção de firewall obrigatória.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** DMZ (Demilitarized Zone), Network Segmentation, Security Architecture, Perimeter Defense
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform plan -target=module.dmz_network
```
