# 14 — Deploy Atômico de Single Page Applications (SPA) com Links Simbólicos e Assets Versionados

## 🏢 Cenário de Produção e Vida Real
Deploy de aplicações web frontend Next.js/React em servidores Nginx sem recachear arquivos antigos.

### ⚠️ O Problema Real
Usuários navegando no site durante o deploy baixam o HTML novo com hashes de chunks JS que ainda estão sendo copiados, gerando erros 404.

## 🚀 Arquitetura e Engenharia de CI/CD
Criação de pasta de release isolada (/srv/app/releases/v1.2.0), cópia completa dos assets estáticos com hashes imutáveis e chaveamento atômico do link simbólico 'current' via 'ln -sfn'.

## 🛠️ Ferramentas e Tecnologias Utilizadas
`ln, rsync, nginx, bash`

## 📌 Exemplo de Manifesto / Execução CLI
```bash
./deploy_spa_atomic.sh --release-dir /srv/app/releases/v2.1 --symlink /srv/app/current
```
