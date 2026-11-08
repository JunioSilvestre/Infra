# 17 — Higienização Automatizada de Pacotes Órfãos e Bibliotecas Obsoletas

## 🏢 Cenário de Negócios e Produção Real
Servidores com anos de operação acumulando centenas de bibliotecas compartilhadas (.so) antigas e sem uso.

### ⚠️ O Problema Real
Bibliotecas antigas não recebem patches e ampliam a superfície de vulnerabilidades conhecidas (CVEs).

## 🚀 Arquitetura e Engenharia em Bash
Identificação de pacotes órfãos com deborphan / package-cleanup --leaves, verificação de ausência de dependentes com apt-cache rdepends, remoção segura com log de auditoria.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`deborphan, apt-get, dpkg, logger`

## 📌 Exemplo de Execução CLI
```bash
./clean_orphans.sh --dry-run --exclude-list /etc/keep_packages.txt
```
