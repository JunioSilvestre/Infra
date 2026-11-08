# 01 — Triagem Automatizada e Coleta de Evidências de Pods em CrashLoopBackOff

## 🏢 Cenário de Negócios e Produção Real
Aplicações em Kubernetes que falham continuamente após deploy e entram em estado CrashLoopBackOff.

### ⚠️ O Problema Real
Engenheiros perdem tempo executando manualmente kubectl describe, kubectl logs e analisando eventos dispersos.

## 🚀 Arquitetura e Engenharia em Bash
Varredura de todos os namespaces via kubectl buscando pods com status CrashLoopBackOff, extração de logs do container atual e do anterior (--previous), captura dos eventos recentes do pod e compilação em relatório único.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`kubectl, jq, awk, column, tar`

## 📌 Exemplo de Execução CLI
```bash
./pod_triage.sh --namespace prod --auto-dump --dest-dir /tmp/k8s_crashes
```
