# Detecção Autônoma de Nós Defeituosos e Drenagem Automática com NPD e Draino

## 1. Cenário de Produção Real
Instâncias EC2 apresentando falhas silenciosas de kernel (Kernel Deadlocks, Read-only Filesystems) continuavam recebendo novos pods.

## 2. O Problema Real
Identificar problemas de hardware/kernel no nó e isolá-lo (cordon) e drená-lo (drain) sem necessidade de alerta para o engenheiro de plantão.

## 3. Arquitetura e Engenharia da Solução
Deploy do Node Problem Detector expondo NodeConditions com Draino observando as condições e disparando eviction respeitando PDBs.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Node Problem Detector (NPD), Draino, Kubernetes NodeConditions, PDB
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
kubectl describe node ip-10-0-12-45.ec2.internal | grep -A 5 Conditions
```
