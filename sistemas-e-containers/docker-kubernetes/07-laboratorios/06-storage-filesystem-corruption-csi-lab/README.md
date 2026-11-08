# Recuperação de Corrupção de Sistema de Arquivos em Volumes Persistentes (PV)

## 1. Cenário de Produção Real
Falhas de energia no datacenter ou travamento de storage podem corromper sistemas de arquivos ext4/xfs montados em pods de bancos de dados.

## 2. O Problema Real
Executar checagens de integridade e reparo de sistema de arquivos sem destruir o volume persistente do cliente.

## 3. Arquitetura e Engenharia da Solução
Laboratório injetando corrupção de blocos em um loop device simulando um PV, desmontagem segura e execução do `e2fsck/xfs_repair` via pod de resgate.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** e2fsck, xfs_repair, Kubernetes PV/PVC, Rescue Pod Pattern
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
kubectl apply -f rescue-pod.yaml && kubectl exec -it rescue-pod -- e2fsck -y /dev/xvdf
```
