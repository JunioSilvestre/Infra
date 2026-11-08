# Simulação de Ataques e Testes de Intrusão em Clusters com Kube-Hunter

## 1. Cenário de Produção Real
Necessidade de validar defensas corporativas simulando o comportamento de um invasor que já obteve acesso à rede do datacenter.

## 2. O Problema Real
Descobrir portas desprotegidas, serviços vulneráveis expostos e configurações incorretas antes que invasores reais as encontrem.

## 3. Arquitetura e Engenharia da Solução
Execução do Kube-Hunter em modo ativo dentro e fora do cluster gerando matriz MITRE ATT&CK de vulnerabilidades encontradas.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Aqua Security kube-hunter, Penetration Testing, MITRE ATT&CK for Kubernetes
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
kube-hunter --remote 10.0.0.0/16 --active
```
