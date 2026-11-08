# Reprodução e Resolução de Pânico de Ejeção de Pods por Falta de Espaço em Disco

## 1. Cenário de Produção Real
Vivenciar o momento crítico em que o Kubelet entra em estado de `DiskPressure` e começa a ejetar (evict) dezenas de pods simultaneamente.

## 2. O Problema Real
Aprender a priorizar a remoção de imagens mortas e volumes temporários para restabelecer a saúde do nó antes do despejo de pods críticos.

## 3. Arquitetura e Engenharia da Solução
Script gravando arquivo de 50GB no disco do nó de teste, acompanhamento dos eventos de eviction no Kubernetes e execução de remediação rápida.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Kubelet Eviction Thresholds, DiskPressure Triage, Kubernetes Operations
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
kubectl get events --field-selector reason=Evicted
```
