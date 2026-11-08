# Governança e Bloqueio de Não-Conformidade com Azure Policy e CIS Benchmarks

## 1. Cenário de Produção Real
Desenvolvedores criavam recursos em regiões proibidas (fora dos EUA) ou deixavam Storage Accounts com acesso HTTP inseguro ativado.

## 2. O Problema Real
Impedir via guardrails de governança a criação de qualquer recurso que viole as diretrizes de conformidade corporativa e segurança.

## 3. Arquitetura e Engenharia da Solução
Definição de Azure Policy Initiatives com efeito `Deny`, forçando encriptação obrigatória, tagging corporativo e restrição geográfica de locais.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Azure Policy, Azure Policy Initiatives, CIS Azure Benchmark, Compliance Automation
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
az policy state summarize --management-group mg-production
```
