# Padrão de Infraestrutura Imutável com Rotação Zero-Downtime de Golden AMIs

## 1. Cenário de Produção Real
Servidores em produção recebiam patches e alterações de configuração a quente gerando divergências incontroláveis de configuração.

## 2. O Problema Real
Eliminar servidores mutáveis: toda atualização de software gera uma nova imagem imutável e um rolling update completo do parque de máquinas.

## 3. Arquitetura e Engenharia da Solução
Integração do Terraform com Launch Templates consumindo IDs de AMIs mais recentes e disparando instance refresh automatizado.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Immutable Infrastructure, AWS Auto Scaling Instance Refresh, Golden AMIs
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
aws autoscaling start-instance-refresh --auto-scaling-group-name prod-asg
```
