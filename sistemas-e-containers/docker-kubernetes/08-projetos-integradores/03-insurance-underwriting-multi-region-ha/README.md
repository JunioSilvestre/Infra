# Plataforma de Subscrição de Apólices com Resiliência Ativo-Ativo Multi-Região

## 1. Cenário de Produção Real
Seguradora em Hartford (Connecticut) requer continuidade absoluta de negócios contra desastres naturais com RPO zero e failover automático.

## 2. O Problema Real
Sincronizar dados transacionais e rotear tráfego de usuários transparentemente entre dois datacenters geodistribuídos.

## 3. Arquitetura e Engenharia da Solução
Dois clusters Kubernetes conectados via Cilium ClusterMesh, replicação de banco de dados CockroachDB e DNS global com AWS Route53.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Cilium ClusterMesh, CockroachDB, AWS Route53 Geo-Routing, ExternalDNS
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
cilium clustermesh status && cockroach node status
```
