# Blindagem de Chamadas de Sistema com Perfis Customizados de Seccomp e AppArmor

## 1. Cenário de Produção Real
Aplicações em Node.js e Python executavam mais de 300 chamadas de sistema (syscalls) do kernel, das quais 70% eram totalmente desnecessárias.

## 2. O Problema Real
Bloquear syscalls perigosas (como ptrace, reboot, mount) que são comumente exploradas em ataques de escape de containers.

## 3. Arquitetura e Engenharia da Solução
Criação de perfil Seccomp restritivo em JSON carregado no `/var/lib/kubelet/seccomp/profiles/` e ativado no securityContext do pod.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Linux Seccomp, AppArmor Profiles, Linux Syscalls, Security Hardening
- **Padrões:** Cloud Native Computing Foundation (CNCF), Zero-Trust Architecture, 12-Factor App, Resiliência de Alta Criticidade

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta com comandos operacionais
kubectl apply -f pod-with-custom-seccomp.yaml
```
