# Simulação de Expiração de Certificados TLS e Emissão Automatizada de Emergência

## 1. Cenário de Produção Real
Certificado SSL de um balanceador expira, impedindo conexões de clientes externos com avisos de segurança no navegador.

## 2. O Problema Real
Executar a substituição atômica de certificados digitais e validação de DNS em menos de 5 minutos.

## 3. Arquitetura e Engenharia da Solução
Configuração de certificado expirado proposital, constatação de erro via cURL e disparo de renovação via AWS ACM.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** TLS Certificate Expiration, AWS ACM, Zero-Downtime Certificate Swap
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
curl -vI https://service.internal.corp
```
