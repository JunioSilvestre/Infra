# Laboratório de Resolução de Dados Defasados e Invalidação de Cache em Massa

## 1. Cenário de Produção Real
Preços de produtos promocionais continuavam exibindo valores antigos para clientes porque o cache distribuído não foi invalidado no deploy.

## 2. O Problema Real
Executar rotinas de invalidação atômica e seletiva de cache Redis sem causar sobrecarga de leituras diretas no banco de dados.

## 3. Arquitetura e Engenharia da Solução
Simulação de inconsistência de cache, execução de script de invalidação baseado em padrões de chaves e acompanhamento de taxa de acerto.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Cache Invalidation, Redis Cache Stampede Defense, Cache Consistency
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
redis-cli --scan --pattern 'product:price:*' | xargs redis-cli del
```
