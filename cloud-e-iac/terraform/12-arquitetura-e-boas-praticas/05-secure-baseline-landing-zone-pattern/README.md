# Padrão Arquitetural de Linha de Base de Segurança (Baseline Landing Zone)

## 1. Cenário de Produção Real
Novas contas de nuvem criadas na corporação nasciam sem monitoramento, com portas de rede desprotegidas e sem trilha de auditoria.

## 2. O Problema Real
Provisionar uma linha de base de segurança obrigatória em qualquer nova conta de nuvem em menos de 10 minutos.

## 3. Arquitetura e Engenharia da Solução
Módulo de Baseline provisionando AWS CloudTrail multi-região, AWS Config com regras de conformidade e desativação de regiões não utilizadas.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** AWS Security Baseline, AWS CloudTrail, AWS Config, CIS Benchmark
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
terraform apply -target=module.account_security_baseline
```
