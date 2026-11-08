# 04-testes-e-qualidade — Automação de Testes e Portões de Qualidade

Projetos práticos de esteiras de testes: unitários, cobertura mínima com Codecov, testes de carga com k6, testes de mutação com Stryker, testes de contrato com Pact e testes E2E headless com Playwright.

---

## 🏛️ Trilha de Projetos Práticos de CI/CD Nível Sênior (20 Projetos Reais)

| # | Projeto | Título / Foco de Engenharia | Ferramentas Chave |
|---|---|---|---|
| **01** | [`01-code-coverage-threshold-gate-codecov/`](./01-code-coverage-threshold-gate-codecov) | **Portão de Cobertura de Código com Trava Mínima e Relatório Visual (Codecov/Coveralls)** | `codecov-action, lcov, pycobertura` |
| **02** | [`02-k6-performance-load-testing-pipeline/`](./02-k6-performance-load-testing-pipeline) | **Pipeline de Testes de Carga Automatizados com k6 e Verificação de SLAs de Latência** | `k6, jq, github-actions` |
| **03** | [`03-stryker-mutation-testing-pipeline/`](./03-stryker-mutation-testing-pipeline) | **Testes de Mutação com Stryker: Medindo a Real Eficácia dos Testes Unitários** | `stryker, jest, dotnet-stryker` |
| **04** | [`04-pact-consumer-driven-contract-testing/`](./04-pact-consumer-driven-contract-testing) | **Testes de Contrato Guiados pelo Consumidor (Consumer-Driven Contracts) com Pact** | `pact-cli, pact-broker, curl` |
| **05** | [`05-playwright-headless-e2e-matrix-testing/`](./05-playwright-headless-e2e-matrix-testing) | **Suíte de Testes E2E Paralelos em Modo Headless com Playwright e Vídeo de Falhas** | `playwright, npx, github-actions` |
| **06** | [`06-sonarqube-clean-code-quality-gate/`](./06-sonarqube-clean-code-quality-gate) | **Portão de Qualidade Rigoroso de Clean Code e Débito Técnico com SonarQube / SonarCloud** | `sonar-scanner, sonarcloud, jq` |
| **07** | [`07-smoke-testing-post-deploy-verification/`](./07-smoke-testing-post-deploy-verification) | **Testes de Fumaça (Smoke Tests) Pós-Deploy com Rollback Automático** | `curl, jq, newman, bash` |
| **08** | [`08-newman-postman-api-regression-suite/`](./08-newman-postman-api-regression-suite) | **Execução Automatizada de Coleções Postman para Regressão de API com Newman** | `newman, newman-reporter-htmlextra` |
| **09** | [`09-database-rollback-migration-test-runner/`](./09-database-rollback-migration-test-runner) | **Validador e Testador Automatizado de Migrações de Banco com Rollback Obrigatório** | `docker, psql, flyway, bash` |
| **10** | [`10-visual-regression-testing-percy-playwright/`](./10-visual-regression-testing-percy-playwright) | **Testes de Regressão Visual Automatizados com Detecção de Discrepâncias de Pixel** | `playwright, pixelmatch, percy` |
| **11** | [`11-chaos-engineering-litmus-pipeline-gate/`](./11-chaos-engineering-litmus-pipeline-gate) | **Testes de Caos em CI com LitmusChaos e Verificação de Tolerância a Falhas** | `litmusctl, kubectl, k6` |
| **12** | [`12-test-data-factory-fixture-generator/`](./12-test-data-factory-fixture-generator) | **Fábrica e Gerador Automatizado de Massa de Dados Isolada para Testes de Integração** | `faker, python3, psql` |
| **13** | [`13-accessibility-a11y-axe-core-audit-gate/`](./13-accessibility-a11y-axe-core-audit-gate) | **Auditoria Automatizada de Acessibilidade (a11y) em CI com axe-core e Pa11y** | `pa11y-ci, axe-core` |
| **14** | [`14-security-header-ssl-labs-api-auditor/`](./14-security-header-ssl-labs-api-auditor) | **Auditor Automatizado de Cabeçalhos HTTP de Segurança e Qualidade TLS (A+ Rating)** | `curl, jq, testssl.sh` |
| **15** | [`15-mobile-app-automated-device-farm-testing/`](./15-mobile-app-automated-device-farm-testing) | **Orquestrador de Testes em Dispositivos Físicos Reais em Nuvem (Device Farm / BrowserStack)** | `maestro, appium, curl, jq` |
| **16** | [`16-performance-budget-lighthouse-ci-gate/`](./16-performance-budget-lighthouse-ci-gate) | **Portão de Performance Web com Orçamentos Rígidos no Lighthouse CI (LHCI)** | `lhci, lighthouse-ci` |
| **17** | [`17-mock-server-wiremock-stubbing-pipeline/`](./17-mock-server-wiremock-stubbing-pipeline) | **Servidor Mock Dinâmico com WireMock para Simulação de APIs de Terceiros** | `wiremock, docker, curl` |
| **18** | [`18-grpc-protobuf-backward-compatibility-gate/`](./18-grpc-protobuf-backward-compatibility-gate) | **Portão de Compatibilidade Retroativa de APIs gRPC e Schemas Protocol Buffers com Buf** | `buf, protobuf` |
| **19** | [`19-openapi-swagger-drift-validator/`](./19-openapi-swagger-drift-validator) | **Validador e Detector de Desvio entre Especificação OpenAPI e Código Real** | `openapi-spec-validator, dredd, prism` |
| **20** | [`20-flaky-test-quarantine-auto-issue-tracker/`](./20-flaky-test-quarantine-auto-issue-tracker) | **Quarentena Automática de Testes Instáveis e Abertura de Issues no GitHub/Jira** | `pytest, jest, gh-cli, jq` |
