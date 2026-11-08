# Otimização de Rota de Internet com AWS Global Accelerator e IPs Anycast

## 1. Cenário de Produção Real
Usuários em diferentes partes do mundo sofriam com lentidões causadas por perda de pacotes e saltos de provedores de internet comuns.

## 2. O Problema Real
Ingressar o tráfego do usuário na rede global de fibra óptica privada da AWS o mais próximo possível da sua localização geográfica.

## 3. Arquitetura e Engenharia da Solução
Configuração do AWS Global Accelerator fornecendo dois endereços IPs Anycast estáticos roteando tráfego para endpoints saudáveis em us-east-1.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** AWS Global Accelerator, Anycast IP Routing, Network Performance, Low-Latency Transit
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
aws globalaccelerator describe-accelerator --accelerator-arn <ARN>
```
