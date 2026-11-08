# Auditoria e Prevenção de APIs Descontinuadas do Kubernetes com Pluto

## 1. Cenário de Produção Real
Upgrades de versão de cluster Kubernetes (ex: 1.25 para 1.28) quebravam deploys devido ao uso de APIs depreciadas em Helm charts.

## 2. O Problema Real
Auditar automaticamente o código dos charts e os releases instalados no cluster antes de autorizar o upgrade de versão do Kubernetes.

## 3. Arquitetura e Engenharia da Solução
Integração da ferramenta Pluto (Fairwinds) escaneando os manifests renderizados do chart no pipeline e emitindo alertas de quebra.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Pluto by Fairwinds, Kubernetes API Deprecations, Helm Release Auditing
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
helm template ./my-chart | pluto detect - --target-versions k8s=v1.30.0
```
