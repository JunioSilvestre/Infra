# Roteamento de Pull de Imagens Baseado em Menor Latência de Rede Global

## 1. Cenário de Produção Real
Clusters na Europa e Costa Oeste dos EUA demoravam minutos para baixar imagens armazenadas no registry localizado em Nova York.

## 2. O Problema Real
Direcionar requisições de download de imagens para o bucket de storage regional mais próximo daquele cluster Kubernetes.

## 3. Arquitetura e Engenharia da Solução
Configuração de buckets S3 multi-região com AWS Route53 Latency-Based Routing sob o mesmo domínio corporativo unificado.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** AWS Route53 Latency Routing, S3 Cross-Region Replication, Registry DNS
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
dig registry.global.corp.internal +short
```
