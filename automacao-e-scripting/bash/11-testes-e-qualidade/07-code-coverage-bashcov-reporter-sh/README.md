# 07 — Medidor de Cobertura de Código para Testes em Bash com bashcov

## 🏢 Cenário de Negócios e Produção Real
Auditoria de qualidade em pipelines de CI para medir quantas linhas do script são realmente exercitadas pelos testes unitários.

### ⚠️ O Problema Real
A equipe acha que o script está testado, mas trechos inteiros de tratamento de erro nunca foram executados.

## 🚀 Arquitetura e Engenharia em Bash
Execução da suíte de testes sob o bashcov (baseado no sistema de profiling do Bash via PS4/DEBUG trap), geração de relatório visual em HTML e validação de limite mínimo de 80% de cobertura de código.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`bashcov, ruby, awk`

## 📌 Exemplo de Execução CLI
```bash
bashcov --minimum-coverage 80 bats test/
```
