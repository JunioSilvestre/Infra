# 18 — Testador de Matriz Multi-Distribuição em Containers Docker (Ubuntu, Debian, Alpine, RHEL)

## 🏢 Cenário de Negócios e Produção Real
Validação de scripts corporativos garantindo funcionamento idêntico em todas as distribuições Linux suportadas pela empresa.

### ⚠️ O Problema Real
Um script funciona no Ubuntu do desenvolvedor mas falha no Debian de produção por diferenças de paths de pacotes.

## 🚀 Arquitetura e Engenharia em Bash
Orquestrador em Bash que dispara execuções paralelas dos testes unitários em containers Docker das principais distribuições ('ubuntu:24.04', 'debian:12', 'alpine:3.20', 'rockylinux:9'), consolidando a matriz de compatibilidade em tabela colorida.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`docker, xargs, column`

## 📌 Exemplo de Execução CLI
```bash
./matrix_test.sh --distros 'ubuntu,debian,alpine,rocky' --suite test/suite.bats
```
