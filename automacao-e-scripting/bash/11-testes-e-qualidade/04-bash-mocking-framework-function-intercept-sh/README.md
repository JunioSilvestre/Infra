# 04 — Framework de Mocking e Interceptação de Comandos do Sistema para Testes Seguros

## 🏢 Cenário de Negócios e Produção Real
Testar scripts que executam comandos destrutivos (como 'rm -rf' ou 'reboot') sem que eles realmente executem no ambiente de teste.

### ⚠️ O Problema Real
Testar scripts de manutenção em máquinas reais pode destruir o ambiente de desenvolvimento.

## 🚀 Arquitetura e Engenharia em Bash
Mecanismo em Bash que cria funções mock temporárias ou altera o PATH para apontar para binários 'dummy' controlados, registrando os argumentos com os quais o comando foi chamado para asserção posterior.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`export PATH, declare -f, mktemp`

## 📌 Exemplo de Execução CLI
```bash
./run_tests_with_mocks.sh --mock-binaries 'systemctl,reboot,rm'
```
