# 09 — Pre-Push Hook e Scanner de Chaves de API e Segredos em Repositórios Git

## 🏢 Cenário de Negócios e Produção Real
Desenvolvedores e engenheiros de DevOps commitando senhas, chaves AWS e certificados privados em repositórios corporativos.

### ⚠️ O Problema Real
Vazamento de credenciais na nuvem é detectado por atacantes em menos de 60 segundos após o push.

## 🚀 Arquitetura e Engenharia em Bash
Hook pre-push em Bash que intercepta commits pendentes, varre os diffs usando expressões regulares rigorosas buscando padrões de chaves (AKIA..., RSA PRIVATE KEY, tokens JWT, senhas de banco) e aborta o push imediatamente se encontrar evidência.

## 🛠️ Ferramentas Nativas Linux Utilizadas
`git, grep -E, sed, awk`

## 📌 Exemplo de Execução CLI
```bash
./git_secrets_hook.sh --install-hook /home/Projetos/.git/hooks
```
