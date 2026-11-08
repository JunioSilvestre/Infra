# ==============================================================================
# INFRASTRUCTURE MONOREPO — MAKEFILE UNIVERSAL (LINUX / MACOS / WSL2)
# ==============================================================================
SHELL := /usr/bin/env bash
.DEFAULT_GOAL := help

.PHONY: help
help: ## Exibe a lista de comandos disponiveis
	@echo "================================================================================"
	@echo " 🏛️  INFRASTRUCTURE MONOREPO — COMANDOS DE DESENVOLVIMENTO"
	@echo "================================================================================"
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "  \033[36m%-18s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)
	@echo "================================================================================"

.PHONY: setup
setup: ## Configura o ambiente local para novos desenvolvedores (pre-commit, hooks)
	@echo "==> Instalando hooks de pre-commit..."
	@command -v pre-commit >/dev/null 2>&1 && pre-commit install || echo "⚠️  pre-commit não instalado. Instale com: pip install pre-commit"
	@echo "==> Configurando permissões de execução dos scripts..."
	@find . -type f -name "*.sh" -exec chmod +x {} +
	@echo "✅ Ambiente pronto para desenvolvimento!"

.PHONY: lint
lint: ## Executa todos os linters de código (ShellCheck, YAML, Python, Terraform)
	@echo "==> Executando pre-commit em todos os arquivos..."
	@command -v pre-commit >/dev/null 2>&1 && pre-commit run --all-files || echo "⚠️  Execute: pip install pre-commit && pre-commit run --all-files"

.PHONY: fmt
fmt: ## Formata automaticamente arquivos Terraform, Python e Markdown
	@echo "==> Formatando arquivos Terraform..."
	@command -v terraform >/dev/null 2>&1 && terraform fmt -recursive cloud-e-iac/ || true
	@echo "==> Formatando scripts Python..."
	@command -v ruff >/dev/null 2>&1 && ruff format . || true
	@echo "✅ Formatação concluída!"

.PHONY: test-sec-monitor
test-sec-monitor: ## Testa o script SEC EDGAR monitor em modo local
	@echo "==> Executando teste do sec-edgar-filings-monitor..."
	@bash automacao-e-scripting/bash/01-automacao/01-sec-edgar-filings-monitor-sh/sec-edgar-filings-monitor.sh --help
