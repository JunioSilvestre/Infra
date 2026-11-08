# 19 — Bootstrapper Autônomo de Clusters Kubernetes Bare-Metal com kubeadm e Cilium

## 🏢 Cenário de Negócios e Produção Real
Instalação padronizada de clusters Kubernetes de produção diretamente sobre hardware físico sem nuvem.

### ⚠️ O Problema Real
Instalar Kubernetes em bare-metal exige dezenas de etapas manuais de kernel, sysctl, containerd, certificados e CNI.

## 🚀 Arquitetura e Engenharia em Bash
Script em Bash de estágio único: configuração de pré-requisitos do kernel (módulos br_netfilter, overlay e sysctl de bridge), instalação e configuração do containerd, inicialização do control-plane via kubeadm com manifesto customizado, deploy automatizado da CNI Cilium com eBPF puro e validação dos nós com Ready.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`kubeadm, kubectl, containerd, cilium, sysctl`

## 📌 Exemplo de Execução CLI
```bash
./bootstrap_k8s_baremetal.sh --pod-cidr 10.244.0.0/16 --control-plane-endpoint 10.0.0.100
```
