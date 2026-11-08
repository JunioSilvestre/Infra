# Módulo: Automação Operacional, Remediação e Auto-Cura

SRE self-healing, operadores Kubernetes, automação com EventBridge/Lambda, correções automáticas de disco e rede.

Este módulo contém 20 projetos práticos de nível sênior baseados no dia a dia real de engenheiros de Site Reliability Engineering (SRE), Observabilidade e Plataforma operando em empresas de missão crítica nos estados de Nova York (NY), Massachusetts (MA) e Connecticut (CT).

## Índice de Projetos

| Diretório | Nome do Projeto | Documentação |
|:---|:---|:---:|
| `01-self-healing-disk-cleaner-daemon` | Remediação Autônoma de Esgotamento de Disco em Nós de Produção (DiskPressure) | [Visualizar](./01-self-healing-disk-cleaner-daemon/README.md) |
| `02-auto-remediation-oom-restart-loop` | Detector e Remediador Autônomo de Pods em Loop de CrashLoopBackOff | [Visualizar](./02-auto-remediation-oom-restart-loop/README.md) |
| `03-aws-ssm-auto-remediation-guardduty` | Auto-Remediação de Incidentes de Segurança com AWS GuardDuty e SSM | [Visualizar](./03-aws-ssm-auto-remediation-guardduty/README.md) |
| `04-automated-certificate-renewal-monitor` | Auditor e Renovador Proativo de Certificados TLS Prestes a Expirar | [Visualizar](./04-automated-certificate-renewal-monitor/README.md) |
| `05-dynamic-scaling-pre-warming-cron` | Aquecimento Prévio de Computação (Pre-Warming) para Picos Comerciais Conhecidos | [Visualizar](./05-dynamic-scaling-pre-warming-cron/README.md) |
| `06-automated-db-connection-leak-killer` | Terminador Automatizado de Conexões Travadas e Ociosas em Banco de Dados | [Visualizar](./06-automated-db-connection-leak-killer/README.md) |
| `07-auto-drain-flaky-kubernetes-nodes` | Drenagem e Quarentena Autônoma de Nós Defeituosos com Node Problem Detector | [Visualizar](./07-auto-drain-flaky-kubernetes-nodes/README.md) |
| `08-circuit-breaker-automated-load-reduction` | Redutor Autônomo de Carga e Ativação de Modo Degradado em Apagões Parciais | [Visualizar](./08-circuit-breaker-automated-load-reduction/README.md) |
| `09-dns-failover-automated-health-switcher` | Comutador Autônomo de DNS Global Baseado em Testes de Saúde Sintéticos | [Visualizar](./09-dns-failover-automated-health-switcher/README.md) |
| `10-stale-pvc-volume-auto-cleaner` | Expurgador Automatizado de Volumes Persistentes Órfãos e Desperdiçados | [Visualizar](./10-stale-pvc-volume-auto-cleaner/README.md) |
| `11-auto-restart-stuck-systemd-services` | Watchdog Autônomo de Serviços de Sistema com Systemd e Heartbeats | [Visualizar](./11-auto-restart-stuck-systemd-services/README.md) |
| `12-automated-synthetic-traffic-generator` | Gerador Automatizado de Tráfego Sintético para Validação de Ambientes Pós-Deploy | [Visualizar](./12-automated-synthetic-traffic-generator/README.md) |
| `13-auto-remediation-bad-network-routes` | Detector e Corretor Autônomo de Tabelas de Roteamento Quebradas em Linux | [Visualizar](./13-auto-remediation-bad-network-routes/README.md) |
| `14-automated-dead-man-snitch-monitor` | Monitoramento Inverso de Silêncio com Padrão Dead Man's Snitch | [Visualizar](./14-automated-dead-man-snitch-monitor/README.md) |
| `15-automated-cloud-quota-limit-monitor` | Monitor e Solicitador Autônomo de Aumento de Cotas e Limites de Nuvem | [Visualizar](./15-automated-cloud-quota-limit-monitor/README.md) |
| `16-auto-remediation-unhealthy-target-groups` | Remediação Autônoma de Instâncias com Falha em Application Load Balancers | [Visualizar](./16-auto-remediation-unhealthy-target-groups/README.md) |
| `17-auto-scaling-scheduled-profile-manager` | Gerenciador Autônomo de Perfis de Escala para Eventos Sazonais Recorrentes | [Visualizar](./17-auto-scaling-scheduled-profile-manager/README.md) |
| `18-automated-log-parser-error-signature-triage` | Triagem e Agrupamento Autônomo de Assinaturas de Erro em Logs com NLP | [Visualizar](./18-automated-log-parser-error-signature-triage/README.md) |
| `19-auto-healing-zombie-process-killer` | Eliminador Autônomo de Processos Zumbis e Filhos Órfãos no Linux | [Visualizar](./19-auto-healing-zombie-process-killer/README.md) |
| `20-automated-rollback-state-machine` | Máquina de Estados Finita para Execução Segura de Rollbacks de Produção | [Visualizar](./20-automated-rollback-state-machine/README.md) |
