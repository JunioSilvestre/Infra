# Testes Automatizados para Prevenção de Vazamento de Segredos no Estado

## 1. Cenário de Produção Real
Garantir que nenhum novo recurso criado por desenvolvedores grave senhas em texto puro nos atributos do arquivo `.tfstate`.

## 2. O Problema Real
Analisar o plano JSON e bloquear recursos que manipulem segredos sem as devidas marcações de proteção e anonimização.

## 3. Arquitetura e Engenharia da Solução
Script de auditoria de pré-deploy inspecionando o plano compilado e sinalizando qualquer chave ou credencial visível em texto claro.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** State File Security, Secret Leak Prevention, Pre-Apply Auditing
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
python audit_state_secrets.py --plan-json plan.json
```
