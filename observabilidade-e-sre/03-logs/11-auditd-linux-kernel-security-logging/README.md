# Coleta e Monitoramento de Chamadas de Kernel com Linux Auditd em Produção

## 1. Cenário de Produção Real
Auditores de segurança bancária exigiam gravação inviolável de todas as vezes que um usuário executou `sudo` ou alterou permissões de arquivos.

## 2. O Problema Real
Capturar eventos em nível de kernel sem impacto perceptível de performance e enviá-los em tempo real para o SIEM.

## 3. Arquitetura e Engenharia da Solução
Regras avançadas em `/etc/audit/rules.d/audit.rules` monitorando chamadas `execve`, `/etc/passwd` e encaminhamento via `audisp-syslog`.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** Linux auditd, audispd, Kernel Auditing, PCI-DSS Compliance, Forensic Analysis
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
ausearch -m EXECVE -ts today | aureport -x
```
