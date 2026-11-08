# Drenagem e Quarentena Autônoma de Nós Defeituosos com Node Problem Detector

## 1. Cenário de Produção Real
Nós Linux apresentando falhas silenciosas de hardware ou corrupção de filesystem continuavam recebendo pods de produção.

## 2. O Problema Real
Identificar estados degradados no sistema operacional do nó e isolá-lo (`cordon`) e drená-lo (`drain`) sem necessidade de alerta humano.

## 3. Arquitetura e Engenharia da Solução
Integração do Node Problem Detector com Draino observando condições do nó e executando evacuação respeitando PDBs.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Node Problem Detector, Draino, Kubernetes Node Quarantine, Self-Healing
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
kubectl get nodes -o custom-columns=NAME:.metadata.name,CONDITIONS:.status.conditions[*].reason
```
