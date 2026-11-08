# Expurgador Automatizado de Volumes Persistentes Órfãos e Desperdiçados

## 1. Cenário de Produção Real
Após a deleção de pods e jobs de testes, dezenas de PersistentVolumeClaims (PVCs) permaneciam ativos, custando milhares de dólares de storage.

## 2. O Problema Real
Identificar PVCs desvinculados de pods há mais de 7 dias, gerar snapshot de segurança e excluí-los mantendo o cluster enxuto.

## 3. Arquitetura e Engenharia da Solução
Script de automação em Python varrendo o cluster Kubernetes, validando ausência de pods montadores e disparando expurgo seguro.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Kubernetes PVC Pruning, Cloud FinOps, Storage Automation, Volume Hygiene
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
python clean_orphaned_pvcs.py --dry-run=false
```
