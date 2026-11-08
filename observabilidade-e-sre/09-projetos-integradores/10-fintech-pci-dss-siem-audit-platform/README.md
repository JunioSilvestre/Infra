# Plataforma Unificada de Observabilidade de Segurança e SIEM para Cartões de Crédito

## 1. Cenário de Produção Real
Gateway de pagamento financeiro processando milhões de transações com exigência de auditoria contínua PCI Nível 1.

## 2. O Problema Real
Correlacionar métricas de infraestrutura com eventos de segurança (tentativas de login, alterações de privilégio e tráfego de rede).

## 3. Arquitetura e Engenharia da Solução
Stack com Linux Auditd, Falco eBPF, OpenSearch e dashboards de auditoria com regras de detecção de anomalias em tempo real.

## 4. Ferramentas e Tecnologias
- **Ecossistema:** PCI-DSS Security Observability, Linux auditd, Falco eBPF, OpenSearch SIEM
- **Padrões:** Google SRE Principles, OpenTelemetry Standards, Zero-Trust Architecture, Observability as Code

## 5. Exemplo de Execução CLI e Validação
```bash
# Execução direta e validação operacional
ausearch -m USER_AUTH -ts recent | aureport -u
```
