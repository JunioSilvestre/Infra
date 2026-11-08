# Análise Estática de Infraestrutura como Código com KICS (Checkmarx)

## 1. Cenário de Produção Real
Identificar falhas de conformidade arquitetural com base nos padrões estabelecidos pelo NIST, HIPAA e GDPR.

## 2. O Problema Real
Garantir que a esteira corporativa utilize múltiplos scanners independentes para evitar pontos cegos de segurança.

## 3. Arquitetura e Engenharia da Solução
Integração do motor de análise KICS no pipeline de CI com exportação de resultados em formato SARIF para o painel de segurança do GitHub.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Checkmarx KICS, SARIF Reports, NIST Compliance, DevSecOps
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
kics scan -p . -o results.json
```
