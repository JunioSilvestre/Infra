# 07 — Template Reutilizável para Testes de Roles Ansible com Molecule e Docker

## 🏢 Cenário de Produção e Vida Real
Garantia de que playbooks e roles de configuração de servidores funcionem perfeitamente antes de rodar nos servidores físicos.

### ⚠️ O Problema Real
Playbooks testados direto em produção que quebram pacotes em servidores corporativos.

## 🚀 Arquitetura e Engenharia de CI/CD
Execução automatizada do Molecule instanciando containers temporários para cada sistema operacional suportado (Ubuntu/RHEL), aplicando a role Ansible, testando idempotência e destruindo os nós.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`molecule, ansible-lint, docker`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
molecule test --scenario-name default
```
