# Varredura Estática de Vulnerabilidades em Código de Infraestrutura com Trivy

## 1. Cenário de Produção Real
Infraestruturas eram provisionadas com portas perigosas abertas para a internet e buckets S3 sem encriptação obrigatória.

## 2. O Problema Real
Detectar más práticas de segurança e configurações incorretas diretamente no código-fonte HCL antes do provisionamento.

## 3. Arquitetura e Engenharia da Solução
Integração do Trivy/tfsec escaneando o repositório e gerando relatórios de severidade que bloqueiam o build se houver falhas críticas.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Trivy, tfsec, DevSecOps Static Analysis, Vulnerability Prevention
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
trivy config . --severity HIGH,CRITICAL --exit-code 1
```
