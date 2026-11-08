# Governança de Storage e Políticas de Retenção de Imagens no Registry

## 1. Cenário de Produção Real
Clusters de desenvolvimento geravam mais de 30 builds diários enchendo terabytes de armazenamento em nuvem e custando milhares de dólares.

## 2. O Problema Real
Remover automaticamente imagens antigas e não tagueadas, preservando estritamente os últimos 10 builds de cada release e imagens em uso.

## 3. Arquitetura e Engenharia da Solução
Implementação de Tag Retention Rules no Harbor por Regex de branch e execução do Garbage Collection com deduplicação de camadas.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Harbor Tag Retention, Garbage Collection, S3 FinOps, Image Pruning
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
curl -X POST -u admin:pass https://harbor.internal/api/v2.0/system/gc/schedule
```
