# Clonagem Instantânea de Volumes de Banco para Ambientes de Validação de Deploy

## 1. Cenário de Produção Real
Testes com bases de dados vazias deixavam passar erros de performance que só se manifestam com tabelas contendo milhões de registros.

## 2. O Problema Real
Disponibilizar clones de leitura e escrita instantâneos da base de dados de produção usando snapshots de storage CSI sem custo de duplicação.

## 3. Arquitetura e Engenharia da Solução
Uso de VolumeSnapshot do Kubernetes e PVCs com dataSource de snapshots de EBS/Ceph montados em pods de validação de deploy.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Kubernetes CSI VolumeSnapshot, PersistentVolumeClaim, Storage Provisioning
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
kubectl apply -f clone-pvc-from-snapshot.yaml
```
