# Distribuição Global com CloudFront e Manipulação de Requisições com Lambda@Edge

## 1. Cenário de Produção Real
Fintech em NY necessita validar cookies de autorização e aplicar redirecionamento regional geográfico na borda com latência de 5 milissegundos.

## 2. O Problema Real
Processar a lógica de cabeçalhos e segurança antes que a requisição percorra a rede até a região de origem da AWS.

## 3. Arquitetura e Engenharia da Solução
Distribuição CloudFront associada a funções Lambda@Edge interceptando eventos `viewer-request` e `origin-response` com compressão Brotli.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** AWS CloudFront, Lambda@Edge, CDN Optimization, Edge Computing
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
aws cloudfront get-distribution --id <DIST_ID>
```
