# Arquitetura de Alta Resiliência Anti-DDoS com AWS Shield Advanced

## 1. Cenário de Produção Real
Plataformas de negociação financeira de Nova York sob risco de extorsão por ataques volumétricos DDoS de centenas de gigabits por segundo.

## 2. O Problema Real
Mitigar ataques de camada 3, 4 e 7 automaticamente com proteção financeira contra estouro de custos e suporte do time de resposta da AWS (SRT).

## 3. Arquitetura e Engenharia da Solução
Habilitação de proteções do AWS Shield Advanced em CloudFront, ALBs e zonas Route53 com criação de alarmes e mitigação proativa de camada 7.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** AWS Shield Advanced, DDoS Mitigation, CloudFront, AWS SRT Support
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
aws shield describe-protection --protection-id <PROTECTION_ID>
```
