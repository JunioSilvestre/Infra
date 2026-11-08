# Hardening e Blindagem da Configuração do Kubelet e Kube-Proxy em Nós de Produção

## 1. Cenário de Produção Real
Configurações padrão de nós Linux permitiam portas anônimas abertas na porta 10250 e leitura desprotegida de métricas de pods.

## 2. O Problema Real
Eliminar vulnerabilidades em nós bare-metal e instâncias em nuvem desativando endpoints anônimos e forçando TLS mútuo no kubelet.

## 3. Arquitetura e Engenharia da Solução
Ajuste nos arquivos de configuração `/var/lib/kubelet/config.yaml` ativando `anonymous.enabled: false`, `webhook.enabled: true` e `readOnlyPort: 0`.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Kubelet Configuration, Kube-Proxy, TLS Client Authentication, CIS Node Hardening
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
curl -k https://localhost:10250/pods || echo 'Anonymous access blocked!'
```
