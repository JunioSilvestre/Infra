# Aceleração de Borda Global e Proteção WAF com Azure Front Door Premium

## 1. Cenário de Produção Real
Aplicações web corporativas exigem terminação SSL rápida na borda da rede Anycast da Microsoft e proteção contra ataques de camada 7.

## 2. O Problema Real
Reduzir a latência para usuários em todo o mundo roteando requisições pelo caminho mais curto com proteção anti-DDoS e WAF ativado.

## 3. Arquitetura e Engenharia da Solução
Azure Front Door Premium com endpoints privados conectando ao backend AKS via Azure Private Link Service e políticas WAF integradas.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Azure Front Door, Anycast Network, Azure Private Link, WAF Policy
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
az afd profile show --profile-name afd-global-corp --resource-group rg-edge
```
