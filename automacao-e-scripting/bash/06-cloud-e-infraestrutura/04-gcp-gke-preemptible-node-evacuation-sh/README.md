# 04 — Evacuador de Nós Preemptíveis / Spot em Clusters GKE do Google Cloud

## 🏢 Cenário de Negócios e Produção Real
Clusters de Kubernetes no GCP utilizando nós preemptíveis para economizar orçamento de infraestrutura.

### ⚠️ O Problema Real
Desligamento súbito de nós do Google Cloud derruba pods que não toleram interrupção imediata.

## 🚀 Arquitetura e Engenharia em Bash
Daemon local que escuta o endpoint de metadados do GCP (http://metadata.google.internal/computeMetadata/v1/instance/preempted), identificação do aviso de 30 segundos, execução de 'kubectl drain --ignore-daemonsets' e descarte limpo de pods.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`curl, kubectl, logger, sleep`

## 📌 Exemplo de Execução CLI
```bash
./gcp_preemptible_drain.sh --node-name '$NODE_NAME' --timeout 25
```
