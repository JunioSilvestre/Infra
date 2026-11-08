# Pipeline de Construção de Imagens Douradas (Golden AMIs) Endurecidas com Packer

## 1. Cenário de Produção Real
Auditores de segurança identificavam que servidores Linux recém-criados demoravam 40 minutos rodando atualizações e continham vulnerabilidades conhecidas.

## 2. O Problema Real
Entregar imagens de SO pré-compiladas, imutáveis e 100% auditadas com benchmarks CIS aplicados antes de irem para produção.

## 3. Arquitetura e Engenharia da Solução
Integração do HashiCorp Packer com scripts Ansible aplicando CIS Benchmark Level 1, gerando AMIs na AWS e templates no VMware simultaneamente.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** HashiCorp Packer, Ansible, CIS Linux Benchmark, AWS AMI Factory
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
packer build -var-file=variables.pkrvars.hcl rhel9-cis-hardened.pkr.hcl
```
