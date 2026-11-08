# Módulo: Docker Engine e Engenharia de Imagens em Produção

Projetos avançados de conteinerização, builds otimizados, isolamento e segurança de containers em escala corporativa.

Este módulo contém 20 projetos práticos de nível sênior baseados no dia a dia real de engenheiros de SRE, DevOps e Plataforma operando em empresas de alta escala (Fintechs, Hospitais, Seguradoras e Big Techs) nos polos de Nova York (NY), Massachusetts (MA) e Connecticut (CT).

## Índice de Projetos

| Diretório | Nome do Projeto | Documentação |
|:---|:---|:---:|
| `01-distroless-multi-stage-security-build` | Pipeline de Build Multi-Stage com Google Distroless e Assinatura Cosign | [Visualizar](./01-distroless-multi-stage-security-build/README.md) |
| `02-rootless-docker-daemon-hpc-boston` | Implantação de Docker Rootless para Cargas de Trabalho Bioinformáticas em Boston | [Visualizar](./02-rootless-docker-daemon-hpc-boston/README.md) |
| `03-buildkit-distributed-cache-s3-ct` | Aceleração de CI/CD com BuildKit e Cache Remoto em S3 em Hartford | [Visualizar](./03-buildkit-distributed-cache-s3-ct/README.md) |
| `04-cgroup-v2-hard-limits-fintech` | Governança Estrita de Memória e CPU com cgroups v2 em Ambientes de Alta Densidade | [Visualizar](./04-cgroup-v2-hard-limits-fintech/README.md) |
| `05-cross-architecture-builder-arm64-amd64` | Infraestrutura de Build Multi-Arquitetura ARM64/AMD64 com QEMU e Buildx | [Visualizar](./05-cross-architecture-builder-arm64-amd64/README.md) |
| `06-container-network-macvlan-telecom` | Roteamento de Alta Performance com Docker macvlan para Telecomunicações em CT | [Visualizar](./06-container-network-macvlan-telecom/README.md) |
| `07-trivy-grype-vulnerability-gate` | Quality Gate Automatizado de Bloqueio de CVEs Críticas em Pré-Deploy | [Visualizar](./07-trivy-grype-vulnerability-gate/README.md) |
| `08-docker-socket-proxy-rbac` | Proxy Protetor de Docker Socket para Ferramentas de Observabilidade e Portainer | [Visualizar](./08-docker-socket-proxy-rbac/README.md) |
| `09-overlay2-storage-driver-leak-recovery` | Investigação e Recuperação de Esgotamento de Inodes e Disco por Driver Overlay2 | [Visualizar](./09-overlay2-storage-driver-leak-recovery/README.md) |
| `10-containerd-nerdctl-migration` | Transição Operacional do Docker Daemon para containerd e nerdctl em Ambientes SRE | [Visualizar](./10-containerd-nerdctl-migration/README.md) |
| `11-docker-compose-production-overrides` | Arquitetura de Ambientes com Docker Compose e Matriz de Overrides Dinâmicos | [Visualizar](./11-docker-compose-production-overrides/README.md) |
| `12-gvisor-runsc-sandboxing` | Isolamento Extremo de Workloads Não Confiáveis com gVisor (runsc) | [Visualizar](./12-gvisor-runsc-sandboxing/README.md) |
| `13-docker-log-rotation-gelf-fluentd` | Auditoria e Rotação de Logs com Driver GELF e Evacuação para Fluentd | [Visualizar](./13-docker-log-rotation-gelf-fluentd/README.md) |
| `14-secret-injection-tmpfs-vault` | Injeção Segura de Certificados e Segredos em Memória RAM com tmpfs | [Visualizar](./14-secret-injection-tmpfs-vault/README.md) |
| `15-ephemeral-database-testcontainers-ci` | Orquestração de Bancos de Dados Efêmeros para Testes de Regressão em CI | [Visualizar](./15-ephemeral-database-testcontainers-ci/README.md) |
| `16-docker-init-zombie-reaper` | Gerenciamento de Sinais UNIX (SIGTERM) e Prevenção de Processos Zumbis com Tini | [Visualizar](./16-docker-init-zombie-reaper/README.md) |
| `17-iptables-docker-forward-hardening` | Hardening de Firewall de Host e Bloqueio de Portas Expostas pelo Docker | [Visualizar](./17-iptables-docker-forward-hardening/README.md) |
| `18-multi-tenant-docker-registry-mirror` | Deploy de Registry Mirror Local com Autenticação e Cache de Imagens Públicas | [Visualizar](./18-multi-tenant-docker-registry-mirror/README.md) |
| `19-container-profiling-perf-ebpf` | Diagnóstico de Consumo Excessivo de Kernel e CPU em Containers com eBPF | [Visualizar](./19-container-profiling-perf-ebpf/README.md) |
| `20-secure-dockerfile-linter-hadolint` | Esteira de Verificação Estática de Dockerfiles com Hadolint e OPA Conftest | [Visualizar](./20-secure-dockerfile-linter-hadolint/README.md) |
