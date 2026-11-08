# Simulação de Vazamento Acidental de Segredos no Estado e Sanitização

## 1. Cenário de Produção Real
Treinar a equipe de segurança para agir rapidamente quando uma senha de banco ou chave privada for commitada no estado.

## 2. O Problema Real
Remover o segredo de todas as versões históricas do bucket S3 e rotacionar a credencial na nuvem sem gerar indisponibilidade.

## 3. Arquitetura e Engenharia da Solução
Script induzindo o vazamento de credencial em variável não sensível, isolamento da chave, sanitização via Python e reencriptação.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** DevSecOps Incident Response, State Sanitization, Key Rotation, Credential Hygiene
- **Padrões:** Infrastructure as Code (IaC), HashiCorp HCL2, GitOps, Zero-Trust Architecture, Clean Architecture

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
python scrub_state_secrets.py --state-file prod.tfstate
```
