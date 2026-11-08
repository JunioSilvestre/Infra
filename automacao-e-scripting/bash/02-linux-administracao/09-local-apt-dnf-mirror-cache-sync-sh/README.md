# 09 — Sincronizador e Cache de Repositórios Locais APT/DNF para Ambientes Isolados

## 🏢 Cenário de Negócios e Produção Real
Servidores em rede isolada (Air-gapped) ou com banda restrita necessitando de repositório interno de pacotes atualizado diariamente.

### ⚠️ O Problema Real
Servidores sem acesso à internet externa não recebem patches críticos de segurança.

## 🚀 Arquitetura e Engenharia em Bash
Sincronização diferencial via apt-mirror ou reposync com verificação de assinaturas GPG, geração de metadados com createrepo/apt-ftparchive e rotação de logs.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`reposync, createrepo, rsync, gpg, du`

## 📌 Exemplo de Execução CLI
```bash
./mirror_sync.sh --distro ubuntu-24.04 --suites 'noble-security,noble-updates' --target /var/repo
```
