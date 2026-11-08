# Chaveamento Completo de Infraestrutura Blue-Green via DNS e Roteamento

## 1. Cenário de Produção Real
Grandes atualizações de infraestrutura (como troca de SO, arquitetura de rede ou versão de banco) geravam receio de downtime prolongado.

## 2. O Problema Real
Subir uma infraestrutura inteiramente nova em paralelo (Green) e chavear 100% do tráfego através de registros DNS com TTL baixo.

## 3. Arquitetura e Engenharia da Solução
Módulos declarativos gerenciando stacks Blue e Green simultaneamente, com chaveamento controlado no módulo de roteamento de borda.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Blue-Green Infrastructure, DNS Traffic Shifting, Zero-Downtime Migration
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform apply -var='active_environment=green'
```
