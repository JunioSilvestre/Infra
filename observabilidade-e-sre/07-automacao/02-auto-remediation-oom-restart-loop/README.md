# Detector e Remediador Autônomo de Pods em Loop de CrashLoopBackOff

## 1. Cenário de Produção Real
Pods com vazamento de memória reiniciavam 50 vezes seguidas, gerando sobrecarga de logs e poluindo o scheduler do Kubernetes.

## 2. O Problema Real
Identificar pods presos em crash contínuo, coletar dumps de memória para análise e isolar o deployment degradado automaticamente.

## 3. Arquitetura e Engenharia da Solução
Operador em Python com biblioteca `kubernetes-client` observando eventos de `CrashLoopBackOff` e executando drenagem controlada.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Kubernetes Python Client, CrashLoopBackOff Remediation, Automated Triage
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
python pod_auto_remediator.py --namespace default
```
