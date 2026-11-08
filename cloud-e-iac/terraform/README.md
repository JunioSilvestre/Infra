# 🌍 Infraestrutura como Código com Terraform

<div align="center">

![Terraform](https://img.shields.io/badge/Terraform-1.9%2B-purple?logo=terraform&logoColor=white)
![HCL](https://img.shields.io/badge/IaC-HCL%20v2-blue)
![AWS](https://img.shields.io/badge/Provider-AWS-orange?logo=amazonwebservices&logoColor=white)
![Azure](https://img.shields.io/badge/Provider-Azure-blue?logo=microsoftazure&logoColor=white)
![Security](https://img.shields.io/badge/Security-Checkov%20%7C%20TFLint-success)

<p align="center">
  <b>Repositório de engenharia de Infraestrutura como Código (IaC) com Terraform: padrões modulares, multi-cloud, gestão segura de estado, pipelines de CI/CD e governança.</b>
</p>

</div>

---

## 📌 Visão Geral

Este repositório reúne arquiteturas completas e padrões de engenharia utilizando **Terraform (HashiCorp Configuration Language - HCL)** para automação de infraestrutura em nuvens públicas (AWS, Azure) e ambientes on-premises/virtualizados.

O projeto é estruturado em **14 domínios progressivos**, cobrindo desde a sintaxe elementar e controle rigoroso de estado remoto até pipelines corporativos de CI/CD, testes com o framework nativo de testes do Terraform e projetos integradores de missão crítica.

---

## 🏗️ Matriz Arquitetural dos 14 Módulos

| # | Módulo | Foco Técnico | Providers & Tecnologias Chave |
|---|---|---|---|
| **01** | [`01-fundamentos`](./01-fundamentos) | Sintaxe HCL, blocos de recursos, providers, data sources, variáveis e outputs | `terraform`, `hashicorp/local`, HCL v2 |
| **02** | [`02-state-e-backend`](./02-state-e-backend) | Gestão de estado remoto, S3/DynamoDB, Azure Blob, trava de concorrência e import | `s3`, `dynamodb`, `azurerm`, `state-locking` |
| **03** | [`03-modulos`](./03-modulos) | Desenvolvimento de módulos reutilizáveis, versionamento semântico e Registry | Encapsulamento, Inputs/Outputs, SemVer |
| **04** | [`04-aws`](./04-aws) | Provisionamento em AWS: EC2, VPCs multi-AZ, S3, IAM roles e Security Groups | `hashicorp/aws` |
| **05** | [`05-azure`](./05-azure) | Provisionamento corporativo no Azure: VMs, VNets, Resource Groups e RBAC | `hashicorp/azurerm` |
| **06** | [`06-linux-e-virtualizacao`](./06-linux-e-virtualizacao) | IaC para Homelabs, Proxmox, VMware vSphere e Cloud-Init em servidores Linux | `proxmox`, `vsphere`, `cloud-init` |
| **07** | [`07-networking-e-seguranca`](./07-networking-e-seguranca) | Topologias de rede segura, VPC Peering, Transit Gateway, Firewalls e WAF | `vpc`, `subnets`, `firewall`, `iam-policies` |
| **08** | [`08-containers-e-kubernetes`](./08-containers-e-kubernetes) | Clusters Kubernetes gerenciados (EKS, AKS) e charts via provider Helm | `hashicorp/kubernetes`, `hashicorp/helm` |
| **09** | [`09-ambientes`](./09-ambientes) | Segregação estrita de múltiplos ambientes (Lab, Dev, Staging e Produção) | Directory separation, Workspaces |
| **10** | [`10-devops-e-ci-cd`](./10-devops-e-ci-cd) | Automação com GitHub Actions e GitLab CI com autenticação OIDC passwordless | `gh-actions`, `gitlab-ci`, `OIDC` |
| **11** | [`11-testes-e-qualidade`](./11-testes-e-qualidade) | Linter com TFLint, SAST de IaC com Checkov e testes com `terraform test` | `tflint`, `checkov`, `terraform test` |
| **12** | [`12-arquitetura-e-boas-praticas`](./12-arquitetura-e-boas-praticas) | Nomenclatura, políticas de tags mandatórias, análise de custos com Infracost | `naming-convention`, `infracost`, `HA` |
| **13** | [`13-exemplos-e-laboratorios`](./13-exemplos-e-laboratorios) | Laboratórios práticos com tutoriais do nível iniciante ao avançado | Hands-on labs, tutoriais guiados |
| **14** | [`14-projetos-integradores`](./14-projetos-integradores) | Soluções completas de produção: Multi-Cloud, EKS integrado e Disaster Recovery | Full-Stack Cloud Architecture |

---

## 📂 Estrutura Padrão de Arquivos por Projeto

Em cada projeto ou módulo, recomenda-se a seguinte convenção de arquivos:

```text
modulo-exemplo/
├── main.tf          # Recursos principais de infraestrutura
├── variables.tf     # Declaração tipada de variáveis de entrada
├── outputs.tf       # Valores exportados para consumo externo
├── providers.tf     # Configuração e versionamento de providers
├── versions.tf      # Requisitos mínimos de versão do Terraform
├── terraform.tfvars.example  # Exemplo seguro de preenchimento de variáveis
└── README.md        # Documentação e exemplos de uso do módulo
```

---

## 🚀 Ciclo de Vida Essencial do Terraform

```bash
# 1. Inicializar providers e módulos
terraform init

# 2. Formatar e validar a sintaxe
terraform fmt -recursive
terraform validate

# 3. Planejar as alterações (plano de execução especulativo)
terraform plan -out=tfplan

# 4. Aplicar o plano validado
terraform apply tfplan

# 5. Destruição segura de laboratórios efêmeros (quando necessário)
terraform destroy
```

---

## 🔒 Segurança e Gestão de Segredos

> [!CAUTION]
> **O arquivo `terraform.tfstate` contém valores em texto puro** (inclusive senhas e certificados gerados). 
> - **NUNCA** comite arquivos `.tfstate` ou `.tfvars` com senhas no repositório.
> - O [`.gitignore`](./.gitignore) deste repositório já está pré-configurado para bloquear arquivos sensíveis.
> - Em produção, utilize **sempre backends remotos criptografados** com KMS/SSE (como AWS S3 + DynamoDB com criptografia em repouso e em trânsito).

---

## 👤 Autor e Manutenção

- **Mantenedor:** Junio Silvestre
- **Repositório:** [https://github.com/JunioSilvestre/Terraform](https://github.com/JunioSilvestre/Terraform)
