# 08 — Pipeline Automatizado em Conformidade com Requisitos PCI-DSS Level 1

## 🏢 Cenário de Produção e Vida Real
Ambientes de processamento de cartão de crédito sujeitos a auditorias anuais rígidas de conformidade.

### ⚠️ O Problema Real
Gastar semanas reunindo evidências manuais para provar aos auditores que todo código foi testado e escaneado.

## 🚀 Arquitetura e Engenharia de CI/CD
Esteira com trilha de auditoria completa e imutável: bloqueio de commits sem revisão dupla de pares, varredura SAST/SCA/DAST mandatória, segregação estrita de ambientes e geração de pacote criptografado de evidências assinado por chave privada.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`gitleaks, semgrep, trivy, gpg, sha256sum`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
./pci_pipeline_verify.sh --release v3.1.0 --generate-dossier
```
