# 12 — Empacotador Automatizado de Pacotes Nativos Linux (.deb e .rpm) com FPM

## 🏢 Cenário de Produção e Vida Real
Distribuição de daemons internos e agentes de infraestrutura para servidores Linux heterogêneos (Ubuntu e RHEL).

### ⚠️ O Problema Real
Criar arquivos de controle Debian e RPM SPEC manualmente é complexo e propenso a erros de sintaxe.

## 🚀 Arquitetura e Engenharia de CI/CD
Automação com Effing Package Management (FPM) gerando pacotes .deb e .rpm a partir de diretórios de arquivos com injeção automática de scripts de post-install (systemctl enable/start) e dependências de sistema.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`fpm, dpkg-deb, rpmbuild`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
fpm -s dir -t deb -n my-agent -v 1.0.0 --after-install postinst.sh ./bin/=/usr/local/bin/
```
