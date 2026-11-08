# 11-testes-e-qualidade — Testes Automatizados, Qualidade e Debugging em Bash

Projetos em Bash para testes unitários com BATS, lint com ShellCheck, formatação com shfmt, profiling de performance e teste de idempotência.

---

## 🏛️ Trilha de Projetos Práticos de Nível Sênior (20 Projetos Reais)

| # | Projeto | Título / Foco de Negócio | Ferramentas Nativas Chave |
|---|---|---|---|
| **01** | [`01-bats-unit-test-harness-suite-sh/`](./01-bats-unit-test-harness-suite-sh) | **Suíte Completa de Testes Unitários para Scripts Bash com BATS-core** | `bats, bats-assert, bats-support` |
| **02** | [`02-shellcheck-ast-linter-ci-gate-sh/`](./02-shellcheck-ast-linter-ci-gate-sh) | **Portão de Qualidade Estático com ShellCheck e Análise de AST** | `shellcheck, find, git` |
| **03** | [`03-shfmt-auto-formatting-pre-commit-sh/`](./03-shfmt-auto-formatting-pre-commit-sh) | **Formatador Automatizado de Código Shell com shfmt e Validação de Estilo** | `shfmt, git, xargs` |
| **04** | [`04-bash-mocking-framework-function-intercept-sh/`](./04-bash-mocking-framework-function-intercept-sh) | **Framework de Mocking e Interceptação de Comandos do Sistema para Testes Seguros** | `export PATH, declare -f, mktemp` |
| **05** | [`05-idempotency-rerun-verifier-sh/`](./05-idempotency-rerun-verifier-sh) | **Verificador de Idempotência: Teste de Execução Repetida de Scripts de Infraestrutura** | `git, diff, find, ss` |
| **06** | [`06-shell-fuzzing-random-input-generator-sh/`](./06-shell-fuzzing-random-input-generator-sh) | **Fuzzing de Entrada: Testador de Resiliência contra Argumentos e Payloads Malformados** | `head, /dev/urandom, xxd, awk` |
| **07** | [`07-code-coverage-bashcov-reporter-sh/`](./07-code-coverage-bashcov-reporter-sh) | **Medidor de Cobertura de Código para Testes em Bash com bashcov** | `bashcov, ruby, awk` |
| **08** | [`08-subshell-leak-environment-isolation-test-sh/`](./08-subshell-leak-environment-isolation-test-sh) | **Auditor de Vazamento de Variáveis e Poluição de Escopo em Subshells** | `env, diff, comm, sort` |
| **09** | [`09-exit-code-propagation-pipefail-verifier-sh/`](./09-exit-code-propagation-pipefail-verifier-sh) | **Verificador de Propagação de Códigos de Saída em Pipelines (pipefail)** | `set -o pipefail, ${PIPESTATUS[@]}` |
| **10** | [`10-permission-privilege-drop-security-test-sh/`](./10-permission-privilege-drop-security-test-sh) | **Testador de Queda de Privilégio Seguro de Root para Usuário Não Privilegiado** | `setpriv, capsh, /proc/self/status, id` |
| **11** | [`11-trap-signal-handling-resilience-suite-sh/`](./11-trap-signal-handling-resilience-suite-sh) | **Testador de Resiliência a Sinais do Sistema (SIGINT, SIGTERM, SIGHUP)** | `kill, pgrep, ps, sleep` |
| **12** | [`12-posix-compatibility-dash-busybox-check-sh/`](./12-posix-compatibility-dash-busybox-check-sh) | **Auditor de Compatibilidade POSIX Estrita com Dash e BusyBox Shell** | `checkbashisms, dash, busybox` |
| **13** | [`13-temp-file-leak-fd-leak-detector-sh/`](./13-temp-file-leak-fd-leak-detector-sh) | **Detector de Vazamento de Arquivos Temporários e Descritores de Arquivo Abertos** | `ls, /proc, lsof, diff` |
| **14** | [`14-network-failure-emulation-mock-server-sh/`](./14-network-failure-emulation-mock-server-sh) | **Servidor Mock de Falhas de Rede HTTP para Validação de Resiliência de Scripts** | `nc, socat, awk` |
| **15** | [`15-performance-execution-time-profiler-sh/`](./15-performance-execution-time-profiler-sh) | **Profiler Linha a Linha de Tempo de Execução e Gargalos de Performance em Bash** | `date, awk, sort, bash -x` |
| **16** | [`16-dry-run-mode-safety-verifier-sh/`](./16-dry-run-mode-safety-verifier-sh) | **Validador e Auditor do Modo Dry-Run (--dry-run) em Scripts Administrativos** | `find, stat, systemctl, diff` |
| **17** | [`17-environment-variable-taint-analyzer-sh/`](./17-environment-variable-taint-analyzer-sh) | **Analisador Estático de Variáveis de Ambiente Não Validadas (Taint Analysis)** | `shellcheck, grep, awk` |
| **18** | [`18-multi-distro-docker-matrix-tester-sh/`](./18-multi-distro-docker-matrix-tester-sh) | **Testador de Matriz Multi-Distribuição em Containers Docker (Ubuntu, Debian, Alpine, RHEL)** | `docker, xargs, column` |
| **19** | [`19-large-file-streaming-memory-benchmark-sh/`](./19-large-file-streaming-memory-benchmark-sh) | **Benchmark de Consumo de Memória em Processamento de Arquivos Gigantes (Streaming)** | `dd, /usr/bin/time, awk` |
| **20** | [`20-release-gate-automated-smoke-test-sh/`](./20-release-gate-automated-smoke-test-sh) | **Portão Automatizado de Testes de Fumaça (Smoke Tests) Pré-Release de Infraestrutura** | `bats, shellcheck, shfmt, git` |
