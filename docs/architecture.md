# 🏛️ Diretrizes de Arquitetura de Infraestrutura

## 1. Princípios de Engenharia
- **Infraestrutura como Código (IaC):** Nenhuma alteração em nuvem é feita manualmente no console; tudo deve ser versionado via Terraform.
- **Fail Fast & Resiliência:** Scripts de automação operam com `set -euo pipefail` e controle de locks com `flock`.
- **Imutabilidade & Idempotência:** Playbooks, scripts e manifests devem produzir o mesmo resultado independentemente de quantas vezes forem executados.
- **Observabilidade por Padrão:** Serviços e automações devem emitir logs estruturados e métricas para monitoramento central.

## 2. Padrões de Nomenclatura
- Diretórios e arquivos usam `kebab-case` em letras minúsculas.
- Scripts executáveis possuem permissão `chmod +x` e cabeçalho portátil `#!/usr/bin/env bash` ou `#!/usr/bin/env python3`.
- Variáveis de ambiente sensíveis devem ser mantidas em arquivos `.env` locais (ignorados pelo git).
